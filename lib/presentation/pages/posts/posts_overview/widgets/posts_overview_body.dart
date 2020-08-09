import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/post/post_watcher/post_watcher_bloc.dart';
import 'post_card_widget.dart';

class PostOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostWatcherBloc, PostWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return PostCard(
                  post: post,
                );
              },
              itemCount: state.posts.size,
            );
          },
          loadFailure: (state) {
            return Text(AppLocalizations.of(context).translate('failed'));
          },
        );
      },
    );
  }
}
