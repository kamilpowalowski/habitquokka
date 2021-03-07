import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Window extends StatelessWidget {
  Window({
    required this.number,
    required this.opened,
    required this.onPressed,
  });

  final int number;
  final bool opened;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: AspectRatio(
        aspectRatio: 1,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: _backgroundColor(context),
            primary: Theme.of(context).colorScheme.onPrimary,
            textStyle: Theme.of(context).primaryTextTheme.button?.copyWith(
                  fontSize: 36.sp,
                ),
          ),
          child: Text(opened ? '' : '$number'),
        ),
      ),
    );
  }

  Color? _backgroundColor(BuildContext context) =>
      opened ? null : Theme.of(context).primaryColorDark;
}
