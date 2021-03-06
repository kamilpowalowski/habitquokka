import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:habitquokka/pages/calendar/widgets/cover.dart';

class CalendarPage extends StatelessWidget {
  static int columns = 6;
  static int rows = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Center(
        child: AspectRatio(
          aspectRatio: columns / rows,
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl:
                    'https://placekitten.com/g/2048/${(2048 / columns * rows).toInt()}',
              ),
              Cover(columns: columns, rows: rows),
            ],
          ),
        ),
      ),
    );
  }
}
