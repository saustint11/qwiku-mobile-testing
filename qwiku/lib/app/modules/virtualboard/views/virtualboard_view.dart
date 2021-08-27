import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/virtualboard_controller.dart';

class VirtualboardView extends GetView<VirtualboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VirtualboardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VirtualboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
