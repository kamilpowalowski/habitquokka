import 'package:flutter/material.dart';

import 'package:habitquokka/pages/assets.dart';

class Background extends StatelessWidget {
  Background({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -175,
          right: -150,
          child: Image(
            image: AppAssets.blob1,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          ),
        ),
        Positioned(
          top: -175,
          right: -150,
          child: Image(
            image: AppAssets.blob4,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          ),
        ),
        Positioned(
          bottom: -150,
          left: -150,
          child: Image(
            image: AppAssets.blob2,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          ),
        ),
        Positioned(
          bottom: -150,
          left: -150,
          child: Image(
            image: AppAssets.blob3,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          ),
        ),
        child,
      ],
    );
  }
}
