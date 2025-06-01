import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launcher/body/news/bloc/news_cubit.dart';
import 'package:launcher/body/news/bloc/news_status.dart';
import 'package:url_launcher/url_launcher.dart';

import 'news_card.dart';

class NewsGrid extends StatelessWidget {
  const NewsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Recent Updates", style: TextStyle(color: Colors.white, fontSize: 18),),
              InkWell(onTap: () => launchUrl(Uri.parse("https://secure.runescape.com/m=news/archive?oldschool=1")), child: Text("View All", style: TextStyle(color: Colors.blue, fontSize: 12),))
            ],
          ),
        ),
        BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if(state.latestNewsError == null) {
              if(state.latestNews != null) {
                return GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  crossAxisCount: 3,
                  children: state.latestNews!
                      .newsItems!
                      .map((item) => NewsCard(newsItem: item),)
                      .toList(),
                );
              } else {
                  return CircularProgressIndicator();
              }
            }
            return Text("Failed to load News...");
          },
        ),
      ],
    );
  }
}
