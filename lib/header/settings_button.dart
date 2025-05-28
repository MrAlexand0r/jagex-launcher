import 'package:flutter/material.dart';
import 'package:launcher/header/styles.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {},
        style: headerButtonStyle,
        child: Row(
          children: [
            Text("Einstellungen", style: headerButtonTextStyle),
            SizedBox(width: 6),
            Icon(Icons.settings, color: Colors.white)
          ],
        ));
  }
}
