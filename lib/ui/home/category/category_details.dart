import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/source_response.dart';
import 'package:news/theme/app_color.dart';
import 'package:news/ui/home/category/sources_tab/sources_tab.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(
        future: ApiManager.getSources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.grey,
              ),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something Went Wrong',
                    style: Theme.of(context).textTheme.headlineSmall),
                TextButton(
                    onPressed: () {
                      ApiManager.getSources();
                      setState(() {});
                    },
                    child: Text('Try Again',
                        style: Theme.of(context).textTheme.headlineSmall))
              ],
            );
          }
          if (snapshot.data!.status != 'ok') {
            return Column(
              children: [
                Text(snapshot.data!.message!),
                TextButton(
                    onPressed: () {
                      ApiManager.getSources();
                      setState(() {});
                    },
                    child: Text('Try Again',
                        style: Theme.of(context).textTheme.headlineSmall))
              ],
            );
          }
          var sourcesList = snapshot.data!.sources!;
          return SourcesTab(sourcesList: sourcesList);
        });
  }
}
