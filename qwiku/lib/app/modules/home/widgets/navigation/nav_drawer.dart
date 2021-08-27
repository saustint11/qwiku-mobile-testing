import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'nav_drawer_body_item.dart';
import 'nav_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () => Get.toNamed('/home'),
          ),
          createDrawerBodyItem(
            icon: Icons.search,
            text: 'Search',
            onTap: () => Get.toNamed('/search'),
          ),
          createDrawerBodyItem(
            icon: Icons.batch_prediction,
            text: 'Evaluations',
            onTap: () => Get.toNamed('/evaluations'),
          ),
          createDrawerBodyItem(
            icon: Icons.view_list,
            text: 'Watch Lists',
            onTap: () => Get.toNamed('/watchlist'),
          ),
          createDrawerBodyItem(
            icon: Icons.assignment_ind,
            text: 'Virtual Board',
            onTap: () => Get.toNamed('/virtualboard'),
          ),
          createDrawerBodyItem(
            icon: Icons.school,
            text: 'Schools',
            onTap: () => Get.toNamed('/school'),
          ),
          createDrawerBodyItem(
            icon: Icons.summarize,
            text: 'Reports',
            onTap: () => Get.toNamed('/reports'),
          ),
          createDrawerBodyItem(
            icon: Icons.map,
            text: 'Maps',
            onTap: () => Get.toNamed('/map'),
          ),
          createDrawerBodyItem(
            icon: Icons.directions,
            text: 'Day Builder',
            onTap: () => Get.toNamed('/daybuilder'),
          ),
          createDrawerBodyItem(
            icon: Icons.file_upload,
            text: 'Upload',
            onTap: () => Get.toNamed('/upload'),
          ),
          createDrawerBodyItem(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () => Get.toNamed('/settings'),
          ),
          ListTile(
            title: Text('App version 1.0.0 (alpha-dev)'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
