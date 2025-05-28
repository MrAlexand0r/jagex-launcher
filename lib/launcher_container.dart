import 'package:flutter/material.dart';
import 'package:launcher/body/news.dart';
import 'package:launcher/body/player_infos.dart';
import 'package:launcher/header/header.dart';

class LauncherContainer extends StatelessWidget {
  const LauncherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [News(), PlayerInfos()]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
