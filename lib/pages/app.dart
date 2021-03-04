import 'package:flutter/material.dart';

import 'package:habitquokka/pages/calendar/calendar.dart';
import 'package:habitquokka/redux/redux.dart';

class App extends StatelessWidget {
  final _store = Store<AppState>(
    initialState: AppState.initial(),
    actionObservers: [
      Log.printer(formatter: Log.verySimpleFormatter),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: _store,
      child: MaterialApp(
        title: 'Habit Quokka',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: CalendarPageConnector(),
      ),
    );
  }
}
