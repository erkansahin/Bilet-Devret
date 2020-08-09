import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/post/post_form/post_form_bloc.dart';
import '../../../../../domain/posts/post.dart';

class DetailUrlField extends HookWidget {
  const DetailUrlField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.post.detailUrl;
      },
      buildWhen: (p, c) => p.post.detailUrl != c.post.detailUrl,
      builder: (context, state) {
        return Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).translate("detail_url"),
                hintText: "http://www.example.com/",
                counterText: '',
              ),
              maxLength: Post.maxDetailUrlLength,
          
              maxLines: null,
              minLines: 1,
              onChanged: (value) => context
                  .bloc<PostFormBloc>()
                  .add(PostFormEvent.detailUrlChanged(value)),
              validator: (_) => context
                  .bloc<PostFormBloc>()
                  .state
                  .post
                  .isDetailUrlValid()
                  .fold(
                    (f) => f.maybeMap(
                      exceedingLength: (f) =>
                          '${AppLocalizations.of(context).translate("exceeding_length")}, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
            ));
      },
    );
  }
}
