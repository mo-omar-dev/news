import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';
import 'package:news/ui/home/category/category_details.dart';
import 'package:news/ui/home/category/category_fragment.dart';
import 'package:news/ui/home/drawer/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColor.black,
        child: HomeDrawer(),
      ),
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: CategoryFragment(),
    );
  }
}
