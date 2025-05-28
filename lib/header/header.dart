import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:launcher/header/logged_in_info.dart';
import 'package:launcher/header/settings_button.dart';

import '../window/window_buttons.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WindowTitleBarBox(
          child: Row(
            children: [Expanded(child: MoveWindow()), const WindowButtons()],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white60)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    FlutterLogo(),
                    SizedBox(width: 24),
                    Icon(Icons.cloud_circle),
                  ],
                ),
                Row(children: [SettingsButton(), LoggedInInfo()]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
