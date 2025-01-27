import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/news_response.dart';
import 'package:news/model/source_response.dart';
import 'package:news/theme/app_color.dart';
import 'package:news/ui/home/category/news/news_item.dart';

// ignore: must_be_immutable
class NewsWidget extends StatefulWidget {
  Source source;
  NewsWidget({super.key, required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(widget.source.id ?? ''),
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
                      ApiManager.getNews(widget.source.id ?? '');
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
                      ApiManager.getNews(widget.source.id ?? '');
                      setState(() {});
                    },
                    child: Text('Try Again',
                        style: Theme.of(context).textTheme.headlineSmall))
              ],
            );
          }
          List<Article> newsList = snapshot.data!.articles!;
          return Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return NewsItem(news: newsList[index]);
              },
              itemCount: newsList.length,
            ),
          );
        });
  }
}
