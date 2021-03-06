import 'package:flutter/material.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      designSize: Size(800, 600),
      builder: () => StoreProvider<AppState>(
        store: _store,
        child: MaterialApp(
          title: 'Habit Quokka',
          theme: FlexColorScheme.light(scheme: FlexScheme.brandBlue).toTheme,
          darkTheme: FlexColorScheme.dark(scheme: FlexScheme.brandBlue).toTheme,
          home: CalendarPageConnector(),
        ),
      ),
    );
  }
}
