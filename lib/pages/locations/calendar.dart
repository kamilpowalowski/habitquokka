import 'package:flutter/material.dart';

import 'package:beamer/beamer.dart';

import 'package:habitquokka/pages/calendar/connector.dart';

class CalendarLocation extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/'];
  @override
  List<BeamPage> get pages => [
        BeamPage(
          key: ValueKey('home'),
          child: CalendarPageConnector(),
        ),
      ];
}
