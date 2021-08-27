import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:qwiku/app/core/global_widgets/alerts/show_alert_dialogue.dart';
import 'package:qwiku/app/modules/home/widgets/navigation/nav_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: controller.logo,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Notifications Icon'),
                  content: Text('will show all user notifications'),
                  actions: [
                    TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Profile Icon'),
                  content: Text('will take the user to their profile page'),
                  actions: [
                    TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
