import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_picker/Picker.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/post/post_form/post_form_bloc.dart';

class LocationSelector extends HookWidget {
  const LocationSelector({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {},
        buildWhen: (p, c) =>
            p.post.city != c.post.city || p.post.town != c.post.town,
        builder: (context, state) {
          Future<void> showPickerDialog(BuildContext context) async {
            Picker(
                adapter: PickerDataAdapter<String>(
                    pickerdata: const JsonDecoder().convert(await rootBundle
                        .loadString('assets/json/city_town_data_tr.json'))),
                hideHeader: true,
                confirmText: AppLocalizations.of(context).translate("confirm"),
                cancelText: AppLocalizations.of(context).translate("cancel"),
                title: Text(AppLocalizations.of(context)
                    .translate("select_event_location")),
                onConfirm: (Picker picker, List value) {
                  context.bloc<PostFormBloc>().add(
                      PostFormEvent.cityChanged(picker.getSelectedValues()[0]));
                  context.bloc<PostFormBloc>().add(
                      PostFormEvent.townChanged(picker.getSelectedValues()[1]));
                }).showDialog(context);
          }

          return FlatButton(
              onPressed: () {
                showPickerDialog(context);
              },
              child: context.bloc<PostFormBloc>().state.post.city == ''
                  ? Text(AppLocalizations.of(context)
                      .translate("location_selection"))
                  : Text(
                      '\n      ${AppLocalizations.of(context).translate("city")} : ${context.bloc<PostFormBloc>().state.post.city}\n\n\n      ${AppLocalizations.of(context).translate("town")} : ${context.bloc<PostFormBloc>().state.post.town}\n',
                      style: const TextStyle(color: Colors.black54),
                    ));
        });
  }
}
