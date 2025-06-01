import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launcher/body/news/bloc/news_cubit.dart';
import 'package:launcher/body/news/bloc/news_status.dart';

import 'news_card.dart';

class NewsGrid extends StatelessWidget {
  const NewsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("News"),
        BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if(state.latestNewsError == null) {
              if(state.latestNews != null) {
                return GridView.extent(
                  shrinkWrap: true,
                  maxCrossAxisExtent: 400,
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
