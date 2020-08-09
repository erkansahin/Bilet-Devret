import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_picker/Picker.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/post/post_form/post_form_bloc.dart';

class CategorySelector extends HookWidget {
  const CategorySelector({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          // In case of an initial data failure... We can't get to this point though.
        },
        buildWhen: (p, c) => p.post.category != c.post.category,
        builder: (context, state) {
          Future<void> showPickerDialog(BuildContext context) async {
            Picker(
                adapter: PickerDataAdapter<String>(
                    pickerdata: const JsonDecoder().convert(await rootBundle
                        .loadString('assets/json/event_categories.json')),
                    isArray: true),
                hideHeader: true,
                confirmText: AppLocalizations.of(context).translate("confirm"),
                cancelText: AppLocalizations.of(context).translate("cancel"),
                title: Text(
                    AppLocalizations.of(context).translate("select_category")),
                onConfirm: (Picker picker, List value) {
                  context.bloc<PostFormBloc>().add(
                      PostFormEvent.categoryChanged(
                          picker.getSelectedValues()[0]));
                }).showDialog(context);
          }

          return FlatButton(
              onPressed: () {
                showPickerDialog(context);
              },
              child: context.bloc<PostFormBloc>().state.post.category == ''
                  ? Text(AppLocalizations.of(context)
                      .translate("category_selection"))
                  : Text(
                      '${AppLocalizations.of(context).translate("category")} : ${context.bloc<PostFormBloc>().state.post.category}',
                      style: const TextStyle(color: Colors.black54),
                    ));
        });
  }
}
