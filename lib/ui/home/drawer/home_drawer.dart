import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.center,
          height: 250,
          color: AppColor.white,
          child: const Text(
            'News App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            ImageIcon(
              AssetImage('assets/images/icon_home.png'),
              color: AppColor.white,
            ),
          ],
        ),
      ],
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
