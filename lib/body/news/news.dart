import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launcher/body/news/bloc/news_cubit.dart';
import 'package:launcher/body/news/news_banner.dart';

import 'news_grid.dart';

class News extends StatelessWidget {
  News({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsCubit(),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [NewsBanner(), NewsGrid()]),
        ),
      ),
    );
  }
}
