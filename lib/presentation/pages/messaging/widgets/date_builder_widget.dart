import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../app_localizations.dart';

class DateBuilder extends StatelessWidget {
  const DateBuilder({
    @required this.date,
    this.customDateBuilder,
    this.dateFormat,
  });

  final DateTime date;
  final Widget Function(String) customDateBuilder;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    if (customDateBuilder != null) {
      return customDateBuilder(
        dateFormat != null
            ? dateFormat.format(date)
            : DateFormat('yyyy-MM-dd').format(date),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.only(
          bottom: 5.0,
          top: 5.0,
          left: 10.0,
          right: 10.0,
        ),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          dateFormat != null
              ? dateFormat.format(date)
              : DateFormat.yMMMMd(
                      AppLocalizations.of(context).locale.languageCode)
                  .format(date),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      );
    }
  }
}
