import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CachedNetworkImage(imageUrl: 'https://placekitten.com/g/1024/768');
  }
}
