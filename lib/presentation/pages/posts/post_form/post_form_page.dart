import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../app_localizations.dart';
import '../../../../application/post/post_form/post_form_bloc.dart';
import '../../../../domain/posts/post.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import 'widgets/category_picker_widget.dart';
import 'widgets/date_picker_widget.dart';
import 'widgets/detail_field_widget.dart';
import 'widgets/detail_url_field_widget.dart';
import 'widgets/location_selector_widget.dart';
import 'widgets/price_field_widget.dart';
import 'widgets/title_field_widget.dart';

class PostFormPage extends HookWidget {
  final Post editedPost;

  const PostFormPage({
    Key key,
    @required this.editedPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostFormBloc>()
        ..add(PostFormEvent.initialized(optionOf(editedPost))),
      child: BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                        // Use localized strings here in your apps
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌',
                        unableToUpdate: (_) =>
                            "Couldn't update the Post. Was it deleted from another device?",
                        unexpected: (_) =>
                            'Unexpected error occured, please contact support.'),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).maybePop((route) =>
                      route.settings.name == Routes.postsOverviewPage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const PostFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context).translate("saving"),
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PostFormPageScaffold extends StatelessWidget {
  const PostFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<PostFormBloc, PostFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) => Text(state.isEditing
              ? AppLocalizations.of(context).translate("edit_the_post")
              : AppLocalizations.of(context).translate("create_a_post")),
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.check),
                onPressed: () {
                  context.bloc<PostFormBloc>().add(const PostFormEvent.saved());
                },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<PostFormBloc, PostFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: const CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: CategorySelector()),
                SliverToBoxAdapter(child: LocationSelector()),
                SliverToBoxAdapter(child: DateSelector()),
                SliverToBoxAdapter(child: TitleField()),
                SliverToBoxAdapter(child: PriceField()),
                SliverToBoxAdapter(child: DetailUrlField()),
                SliverToBoxAdapter(child: DetailField()),
              ],
            ),
          );
        },
      ),
    );
  }
}
