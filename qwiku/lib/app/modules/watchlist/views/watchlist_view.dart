import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/watchlist_controller.dart';

class WatchlistView extends GetView<WatchlistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WatchlistView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WatchlistView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
