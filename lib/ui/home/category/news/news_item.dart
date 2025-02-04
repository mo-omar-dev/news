import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/model/news_response.dart';
import 'package:news/theme/app_color.dart';
// import 'package:timeago/timeago.dart' as timeago;

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
                // news.publishedAt ?? '',
                getTimeAgo(news.publishedAt ?? ''),
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          )
        ],
      ),
    );
  }

  String getTimeAgo(String stringDateTime) {
    final requiredDateTime = DateTime.parse(formatDateTime(stringDateTime));
    int timeAgo = DateTime.now().difference(requiredDateTime).inSeconds;
    // return '$timeAgo seconds ago';
    if (timeAgo > 86400) {
      timeAgo = DateTime.now().difference(requiredDateTime).inDays;
      if (timeAgo < 2) {
        return '$timeAgo day ago';
      } else {
        return '$timeAgo days ago';
      }
    } else if (timeAgo >= 3600) {
      timeAgo = DateTime.now().difference(requiredDateTime).inHours;
      if (timeAgo < 2) {
        return '$timeAgo hour ago';
      } else {
        return '$timeAgo hours ago';
      }
    } else if (timeAgo >= 60) {
      timeAgo = DateTime.now().difference(requiredDateTime).inMinutes;
      if (timeAgo < 2) {
        return '$timeAgo minute ago';
      } else {
        return '$timeAgo minutes ago';
      }
    } else {
      timeAgo = DateTime.now().difference(requiredDateTime).inMinutes;
      if (timeAgo < 2) {
        return '$timeAgo second ago';
      } else {
        return '$timeAgo seconds ago';
      }
    }
  }

  String formatDateTime(String stringDateTime) {
    // 2025-02-01T09:12:11Z
    List<String> parts = stringDateTime.split('T');
    // [2025-02-01,09:12:11Z]
    String newParts = parts.join(' ');
    // 2025-02-01 09:12:11Z
    String formatDateTime = newParts.substring(0, newParts.length - 1);
    // 2025-02-01 09:12:11
    return formatDateTime;
  }
}
