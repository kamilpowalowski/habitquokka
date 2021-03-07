import 'package:flutter/material.dart';

import 'package:async_redux/async_redux.dart';

import 'package:habitquokka/pages/calendars/factory.dart';
import 'package:habitquokka/pages/calendars/page.dart';
import 'package:habitquokka/pages/calendars/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class CalendarsPageConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      vm: () => Factory(this),
      builder: (context, viewModel) => CalendarsPage(
        viewModel: viewModel,
      ),
    );
  }
}
