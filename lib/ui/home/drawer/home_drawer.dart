// import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';

class HomeDrawer extends StatelessWidget {
  Function onDrawerItemClicked;
  HomeDrawer({super.key, required this.onDrawerItemClicked});

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
        InkWell(
          onTap: () {
            onDrawerItemClicked();
          },
          child: const DrawerItem(
              imagePath: 'assets/images/icon_home.png', text: 'Go To Home'),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
        ),
        const DrawerItem(
            imagePath: 'assets/images/icon_theme.png', text: 'Theme'),
        const DropDownMenu(text: 'Dark'),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
        ),
        const DrawerItem(
            imagePath: 'assets/images/icon_language.png', text: 'Language'),
        const DropDownMenu(text: 'English'),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String imagePath;
  final String text;
  const DrawerItem({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(imagePath),
            color: AppColor.white,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.white),
          ),
        ],
      ),
    );
  }
}

class DropDownMenu extends StatelessWidget {
  final String text;

  const DropDownMenu({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColor.white, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.white),
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: AppColor.white,
            size: 30,
          )
        ],
      ),
    );
  }
}
