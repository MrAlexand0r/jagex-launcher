import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:jagexLauncherAPI/src/model/news_item.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCard({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white24,
      child: InkWell(
        onTap:
            newsItem.link != null
                ? () => launchUrl(Uri.parse(newsItem.link!))
                : null,
        splashColor: Colors.black12,
        child: Column(
          children: [
            newsItem.summaryImageLink != null
                ? Image.network(newsItem.summaryImageLink!)
                : FlutterLogo(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        children: [
                          if (newsItem.sticky == true)
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Transform.rotate(
                                  angle: math.pi / 4,
                                  child: Icon(
                                    Icons.push_pin,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),

                          TextSpan(text: newsItem.title ?? ''),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        newsItem.summary ?? '',
                        style: TextStyle(color: Colors.white60, fontSize: 14),
                      ),
                    ),
                    Text(
                      newsItem.formattedDate ?? '',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
