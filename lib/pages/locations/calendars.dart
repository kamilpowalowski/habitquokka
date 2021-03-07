import 'package:flutter/material.dart';

import 'package:beamer/beamer.dart';

import 'package:habitquokka/pages/calendar/connector.dart';
import 'package:habitquokka/pages/calendars/calendars.dart';
import 'package:habitquokka/pages/locations/home.dart';

class CalendarsLocation extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/calendars/:id'];
  @override
  List<BeamPage> get pages {
    final id = pathParameters['id'];

    return [
      ...HomeLocation().pages,
      if (pathSegments.contains('calendars'))
        BeamPage(
          key: ValueKey('$CalendarsPageConnector'),
          child: CalendarsPageConnector(),
        ),
      if (id != null)
        BeamPage(
          key: ValueKey('$CalendarPageConnector-${pathParameters['id']}'),
          child: CalendarPageConnector(id: id),
        ),
    ];
  }
}
