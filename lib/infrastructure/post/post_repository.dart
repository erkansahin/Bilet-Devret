import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/posts/i_post_repository.dart';
import '../../domain/posts/post.dart';
import '../../domain/posts/post_failure.dart';
import '../core/firestore_helpers.dart';
import 'post_dtos.dart';

@prod
@lazySingleton
@RegisterAs(IPostRepository)
class PostRepository implements IPostRepository {
  final Firestore _firestore;

  PostRepository(this._firestore);

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAll() async* {
    yield* _firestore
        .collection('posts')
        .orderBy('serverTimeStamp', descending: true)
        .limit(100)
        .snapshots()
        .map(
          (snapshot) => right<PostFailure, KtList<Post>>(
            snapshot.documents
                .map((doc) => PostDto.fromJson(doc.data)
                    .copyWith(
                        id: doc.documentID, creatorID: doc.data['creatorID'])
                    .toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PostFailure, Unit>> create(Post post) async {
    try {
      final userDoc = await _firestore.userDocument();
      final postDto = PostDto.fromDomain(post);

      await _firestore
          .collection('posts')
          .document(postDto.id)
          .setData(postDto.copyWith(creatorID: userDoc.documentID).toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) async {
    try {
      final userDoc = await _firestore.userDocument();
      final postDto = PostDto.fromDomain(post);

      await userDoc.postCollection
          .document(postDto.id)
          .updateData(postDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const PostFailure.unableToUpdate());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> delete({@required Post post}) async {
    try {
      await _tryDeletingPostFromFirebase(post: post);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  Future _tryDeletingPostFromFirebase({@required Post post}) async {
    final postId = post.id;

    await _firestore.collection('posts').document(postId.getOrCrash()).delete();
  }
}
