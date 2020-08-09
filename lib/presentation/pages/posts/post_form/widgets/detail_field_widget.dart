import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/post/post_form/post_form_bloc.dart';
import '../../../../../domain/posts/post.dart';

class DetailField extends HookWidget {
  const DetailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.post.detail;
      },
      buildWhen: (p, c) => p.post.detail != c.post.detail,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context).translate("details"),
              counterText: '',
            ),
            maxLength: Post.maxDetailLength,
            
            maxLines: null,
            minLines: 5,
            onChanged: (value) => context
                .bloc<PostFormBloc>()
                .add(PostFormEvent.detailChanged(value)),
            validator: (_) =>
                context.bloc<PostFormBloc>().state.post.isDetailValid().fold(
                      (f) => f.maybeMap(
                        empty: (f) => AppLocalizations.of(context)
                            .translate("cannot_be_empty"),
                        exceedingLength: (f) =>
                            '${AppLocalizations.of(context).translate("cannot_be_empty")}, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
          ),
        );
      },
    );
  }
}
