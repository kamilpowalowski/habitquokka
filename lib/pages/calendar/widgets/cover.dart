import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cover extends StatefulWidget {
  Cover({
    required this.rows,
    required this.columns,
  });

  final int rows;
  final int columns;

  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  final Set<int> _openedWindows = {};

  bool get _fullyOpened =>
      _openedWindows.length == widget.rows * widget.columns;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: _border(context),
      children: List.generate(
        widget.rows,
        (row) => TableRow(
          children: List.generate(
            widget.columns,
            (column) => _buildWindow(column, row),
          ),
        ),
      ),
    );
  }

  TableBorder? _border(BuildContext context) {
    if (_fullyOpened) return null;
    return TableBorder.all(
        color: Theme.of(context).colorScheme.primary, width: 8);
  }

  _Window _buildWindow(int column, int row) {
    final number = column + row * widget.columns + 1;
    return _Window(
      onPressed: () => setState(() {
        if (_openedWindows.contains(number)) {
          _openedWindows.remove(number);
        } else {
          _openedWindows.add(number);
        }
      }),
      isOpened: _openedWindows.contains(number),
      number: number,
    );
  }
}

class _Window extends StatelessWidget {
  _Window({
    required this.number,
    required this.isOpened,
    required this.onPressed,
  });

  final int number;
  final bool isOpened;
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
          child: Text(isOpened ? '' : '$number'),
        ),
      ),
    );
  }

  Color? _backgroundColor(BuildContext context) =>
      isOpened ? null : Theme.of(context).primaryColorDark;
}
