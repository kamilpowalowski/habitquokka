import 'package:flutter/material.dart';

import 'package:beamer/beamer.dart';

import 'package:habitquokka/pages/home/home.dart';

class HomeLocation extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/'];

  @override
  List<BeamPage> get pages => [
        BeamPage(
          key: ValueKey('$HomePageConnector'),
          child: HomePageConnector(),
        ),
      ];
}
