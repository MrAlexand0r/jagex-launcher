import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [FlutterLogo(), Text("Title"), Text("Subtitle")]),
    );
  }
}
