import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/school_controller.dart';

class SchoolView extends GetView<SchoolController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SchoolView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SchoolView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
