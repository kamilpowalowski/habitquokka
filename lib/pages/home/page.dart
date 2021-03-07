import 'package:flutter/material.dart';

import 'package:habitquokka/generated/l10n.dart';
import 'package:habitquokka/pages/home/view_model.dart';
import 'package:habitquokka/pages/widgets/background.dart';
import 'package:habitquokka/utils/intl_utils_fix.dart';

class HomePage extends StatelessWidget {
  HomePage({required this.viewModel});

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
    return Container();
  }
}
