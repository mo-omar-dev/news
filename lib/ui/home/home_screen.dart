import 'package:flutter/material.dart';
import 'package:news/ui/home/category/category_details.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: const CategoryDetails(),
    );
  }
}
