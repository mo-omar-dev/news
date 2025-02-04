import 'package:flutter/material.dart';
import 'package:news/ui/home/category/category_model.dart';
import 'package:news/ui/home/category/category_widget.dart';

class CategoryFragment extends StatelessWidget {
  var categoriesList = [];
  CategoryFragment({super.key});

  @override
  Widget build(BuildContext context) {
    categoriesList = CategoryModel.getCategoriesList();
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Good Morning\nHere is Some News For You',
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemBuilder: (context, index) => CategoryWidget(
                imagePath: categoriesList[index].path,
                categoryName: categoriesList[index].name,
                index: index),
            itemCount: categoriesList.length,
          ))
        ],
      ),
    );
  }
}
