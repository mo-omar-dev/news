import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/model/news_response.dart';
import 'package:news/theme/app_color.dart';

// ignore: must_be_immutable
class NewsItem extends StatelessWidget {
  Article news;
  NewsItem({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: Theme.of(context).indicatorColor, width: 2)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: CachedNetworkImage(
              imageUrl: news.urlToImage ?? 'image url error',
              placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                color: AppColor.grey,
              )),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Text(
            news.title ?? 'news title error',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'By ${news.author ?? 'UnKnown'}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Text(
                news.publishedAt ?? '...Ago',
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          )
        ],
      ),
    );
  }
}
