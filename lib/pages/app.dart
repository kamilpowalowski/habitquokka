import 'package:flutter/material.dart';

import 'package:beamer/beamer.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:habitquokka/generated/l10n.dart';
import 'package:habitquokka/pages/locations/locations.dart';
import 'package:habitquokka/redux/redux.dart';
import 'package:habitquokka/utils/intl_utils_fix.dart';

class App extends StatelessWidget {
  final BeamLocation _initialLocation = CalendarLocation();
  final List<BeamLocation> _beamLocations = [
    CalendarLocation(),
  ];

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
        child: MaterialApp.router(
          theme: FlexColorScheme.light(scheme: FlexScheme.brandBlue).toTheme,
          darkTheme: FlexColorScheme.dark(scheme: FlexScheme.brandBlue).toTheme,
          onGenerateTitle: (context) => safe(L10n.of(context)).title,
          localizationsDelegates: [
            L10n.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: L10n.delegate.supportedLocales,
          routeInformationParser: BeamerRouteInformationParser(
            beamLocations: _beamLocations,
          ),
          routerDelegate: BeamerRouterDelegate(
            initialLocation: _initialLocation,
          ),
        ),
      ),
    );
  }
}
