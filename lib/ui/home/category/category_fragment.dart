import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';
import 'package:news/ui/home/category/category_model.dart';

class CategoryFragment extends StatelessWidget {
  List<CategoryModel> categoriesList = [];
  final Function onViewAllClicked;
  CategoryFragment({super.key, required this.onViewAllClicked});

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
            separatorBuilder: (context, index1) => const SizedBox(
              height: 10,
            ),
            itemBuilder: (context, index1) => ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                  height: 150,
                  color: Theme.of(context).primaryColor,
                  margin: const EdgeInsets.symmetric(vertical: 0),
                  child: index1 % 2 == 0
                      ? Row(
                          children: [
                            Image.asset(
                              categoriesList[index1].path,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  categoriesList[index1].name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                InkWell(
                                  onTap: () {
                                    onViewAllClicked(categoriesList[index1]);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColor.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 40,
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'View All',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Theme.of(context)
                                              .secondaryHeaderColor,
                                          foregroundColor:
                                              Theme.of(context).primaryColor,
                                          child: const Icon(
                                              Icons.arrow_forward_ios_rounded),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                          ],
                        )
                      : Row(
                          children: [
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  categoriesList[index1].name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                InkWell(
                                  onTap: () {
                                    onViewAllClicked(categoriesList[index1]);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColor.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 40,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Theme.of(context)
                                              .secondaryHeaderColor,
                                          foregroundColor:
                                              Theme.of(context).primaryColor,
                                          child: const Icon(
                                              Icons.arrow_back_ios_rounded),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'View All',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              categoriesList[index1].path,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ],
                        )),
            ),
            itemCount: categoriesList.length,
          ))
        ],
      ),
    );
  }
}
