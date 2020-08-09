import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/post/post_form/post_form_bloc.dart';

class DateSelector extends HookWidget {
  const DateSelector({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          // In case of an initial data failure... We can't get to this point though.
        },
        buildWhen: (p, c) =>
            p.post.day != c.post.day ||
            p.post.hour != c.post.hour ||
            p.post.minute != c.post.minute,
        builder: (context, state) {
          return FlatButton(
              onPressed: () {
                DatePicker.showDateTimePicker(context,
               
                    minTime: DateTime.now(),
                    maxTime: DateTime(2050, 12, 31), onChanged: (date) {
                  context.bloc<PostFormBloc>().add(PostFormEvent.hourChanged(
                      date.hour.toString().padLeft(2, '0')));
                  context.bloc<PostFormBloc>().add(PostFormEvent.minuteChanged(
                      date.minute.toString().padLeft(2, '0')));
                  context.bloc<PostFormBloc>().add(PostFormEvent.dayChanged(
                      date.day.toString().padLeft(2, '0')));
                  context.bloc<PostFormBloc>().add(PostFormEvent.monthChanged(
                      date.month.toString().padLeft(2, '0')));
                  context
                      .bloc<PostFormBloc>()
                      .add(PostFormEvent.yearChanged(date.year.toString()));
                },
                    onConfirm: (date) {},
                    currentTime: DateTime.now(),
                    locale:
                        AppLocalizations.of(context).locale.languageCode == "tr"
                            ? LocaleType.tr
                            : LocaleType.en);
              },
              child: context.bloc<PostFormBloc>().state.post.day == ''
                  ? Text(
                      AppLocalizations.of(context).translate("date_selection"))
                  : Text(
                      '${AppLocalizations.of(context).translate("event_date")} :  ${context.bloc<PostFormBloc>().state.post.day}/${context.bloc<PostFormBloc>().state.post.month}/${context.bloc<PostFormBloc>().state.post.year}, ${context.bloc<PostFormBloc>().state.post.hour}:${context.bloc<PostFormBloc>().state.post.minute}',
                      style: const TextStyle(color: Colors.black54),
                    ));
        });
  }
}
