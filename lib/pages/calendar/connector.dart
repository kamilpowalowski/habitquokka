import 'package:flutter/material.dart';

import 'package:async_redux/async_redux.dart';

import 'package:habitquokka/pages/calendar/factory.dart';
import 'package:habitquokka/pages/calendar/page.dart';
import 'package:habitquokka/pages/calendar/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class CalendarPageConnector extends StatelessWidget {
  CalendarPageConnector({required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      vm: () => Factory(this, id: id),
      builder: (context, viewModel) => CalendarPage(
        viewModel: viewModel,
      ),
    );
  }
}
