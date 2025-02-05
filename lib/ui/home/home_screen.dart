// import 'dart:ui_web';
import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';
import 'package:news/ui/home/category/category_details.dart';
import 'package:news/ui/home/category/category_fragment.dart';
import 'package:news/ui/home/category/category_model.dart';
import 'package:news/ui/home/drawer/home_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryModel? selectedCategory;
  // const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: AppColor.black,
          child: HomeDrawer(
            onDrawerItemClicked: onGoToHomeClicked,
          ),
        ),
        appBar: AppBar(
          title: Text(
            selectedCategory == null ? 'Home' : selectedCategory!.name,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: selectedCategory == null
            ? CategoryFragment(
                onViewAllClicked: (CategoryModel newSelectedCategory) {
                  selectedCategory = newSelectedCategory;

                  setState(() {});
                },
              )
            : CategoryDetails(
                category: selectedCategory!,
              ));
  }

  void onGoToHomeClicked() {
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {});
  }
}
