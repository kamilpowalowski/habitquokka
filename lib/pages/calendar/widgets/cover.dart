import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supercharged/supercharged.dart';

import 'package:habitquokka/pages/calendar/widgets/open_window_dialog.dart';
import 'package:habitquokka/pages/calendar/widgets/window.dart';

class Cover extends StatefulWidget {
  Cover({
    required this.id,
    required this.rows,
    required this.columns,
    required this.shuffled,
  });

  final String id;
  final int rows;
  final int columns;
  final bool shuffled;

  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  final Set<int> _opened = {};
  late List<int> _order;

  bool get _fullyOpened => _opened.length == widget.rows * widget.columns;

  @override
  void initState() {
    super.initState();
    _order = 1.rangeTo(widget.columns * widget.rows).toList(growable: false);
    if (widget.shuffled) {
      _order.shuffle(math.Random(widget.id.hashCode));
    }
  }

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
      color: Theme.of(context).colorScheme.primary,
      width: 8.w,
    );
  }

  Widget _buildWindow(int column, int row) {
    final index = column + row * widget.columns;
    final number = _order[index];

    return Window(
      onPressed: () => _handleWindowPressed(number),
      opened: _opened.contains(number),
      number: number,
    );
  }

  void _handleWindowPressed(int number) async {
    if (_opened.contains(number)) {
      setState(() => _opened.remove(number));
      return;
    }

    final result = await OpenWindowDialog.show(context, number);
    if (result != true) return;

    setState(() => _opened.add(number));
  }
}
