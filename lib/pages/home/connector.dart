import 'package:flutter/material.dart';

import 'package:async_redux/async_redux.dart';

import 'package:habitquokka/pages/home/factory.dart';
import 'package:habitquokka/pages/home/page.dart';
import 'package:habitquokka/pages/home/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class HomePageConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      vm: () => Factory(this),
      builder: (context, viewModel) => HomePage(
        viewModel: viewModel,
      ),
    );
  }
}
