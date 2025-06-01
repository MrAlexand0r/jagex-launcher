import 'package:flutter/material.dart';

class PlayerInfos extends StatelessWidget {
  const PlayerInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            child: Image.network(
              'https://oldschool.runescape.wiki/images/thumb/Old_School_RuneScape_logo.png/640px-Old_School_RuneScape_logo.png',
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
