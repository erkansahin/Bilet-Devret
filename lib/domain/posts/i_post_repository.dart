import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import 'post.dart';
import 'post_failure.dart';

abstract class IPostRepository {
  Stream<Either<PostFailure, KtList<Post>>> watchAll();

  Future<Either<PostFailure, Unit>> create(Post post);
  Future<Either<PostFailure, Unit>> update(Post post);
  Future<Either<PostFailure, Unit>> delete({@required Post post});
}
