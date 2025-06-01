import 'package:flutter/material.dart';

import 'news_card.dart';

class NewsGrid extends StatelessWidget {
  const NewsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("News"),
        GridView.extent(
          shrinkWrap: true,
          maxCrossAxisExtent: 200,
          children: [NewsCard()],
        ),
      ],
    );
  }
}
