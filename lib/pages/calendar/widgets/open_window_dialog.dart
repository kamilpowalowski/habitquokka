import 'package:flutter/material.dart';

import 'package:habitquokka/generated/l10n.dart';
import 'package:habitquokka/utils/intl_utils_fix.dart';

class OpenWindowDialog extends StatelessWidget {
  OpenWindowDialog._({required this.number});

  final int number;

  static Future<bool?> show(BuildContext context, int number) {
    return showDialog<bool>(
      context: context,
      builder: (context) => OpenWindowDialog._(number: number),
    );
  }

  @override
  Widget build(BuildContext context) {
    final title = safe(L10n.of(context)).calendar_cover_alert_title(number);
    final content = safe(L10n.of(context)).calendar_cover_alert_content(number);

    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(safe(L10n.of(context)).general_cancel),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(safe(L10n.of(context)).general_confirm),
        ),
      ],
    );
  }
}
