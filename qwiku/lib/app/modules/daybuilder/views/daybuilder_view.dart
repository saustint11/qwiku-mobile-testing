import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/daybuilder_controller.dart';

class DaybuilderView extends GetView<DaybuilderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DaybuilderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DaybuilderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
