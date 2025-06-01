import 'package:flutter/material.dart';
import 'package:jagexLauncherAPI/src/model/news_item.dart';

class NewsCard extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCard({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          newsItem.summaryImageLink != null
              ? Image.network(newsItem.summaryImageLink!)
              : FlutterLogo(),
          Text(newsItem.title ?? ''),
          Text(newsItem.summary ?? ''),
        ],
      ),
    );
  }
}
