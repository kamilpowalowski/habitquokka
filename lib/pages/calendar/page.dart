import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:habitquokka/generated/l10n.dart';
import 'package:habitquokka/pages/calendar/view_model.dart';
import 'package:habitquokka/pages/calendar/widgets/cover.dart';
import 'package:habitquokka/pages/widgets/background.dart';
import 'package:habitquokka/utils/intl_utils_fix.dart';

class CalendarPage extends StatelessWidget {
  CalendarPage({required this.viewModel});

  final ViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(safe(L10n.of(context)).title),
      ),
      body: Background(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final columns = viewModel.calendar.size.columns;
    final rows = viewModel.calendar.size.rows;
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Center(
        child: AspectRatio(
          aspectRatio: columns / rows,
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: viewModel.calendar.image,
                fit: BoxFit.cover,
              ),
              Cover(
                id: viewModel.calendar.id,
                columns: columns,
                rows: rows,
                shuffled: viewModel.calendar.shuffled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
