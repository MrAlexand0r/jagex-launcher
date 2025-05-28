import 'package:flutter/material.dart';
import 'package:launcher/header/styles.dart';

class LoggedInInfo extends StatelessWidget {
  const LoggedInInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      style: MenuStyle(
        shape: WidgetStateProperty.fromMap(
          <WidgetStatesConstraint, OutlinedBorder>{
            WidgetState.any: ContinuousRectangleBorder(),
          },
        ),
      ),
      menuChildren: [
        MenuItemButton(
          onPressed: () {},
          trailingIcon: Icon(Icons.open_in_new, size: 18),
          child: const Text('Konto'),
        ),
        MenuItemButton(onPressed: () {}, child: const Text('Ausloggen')),
      ],

      builder: (context, controller, child) {
        return TextButton(
          onPressed: () {
            controller.open();
          },
          style: headerButtonStyle,
          child: Row(
            children: [
              Text("unlucc", style: headerButtonTextStyle),
              Text(
                "#1234",
                style: headerButtonTextStyle.copyWith(color: Colors.white30),
              ),
              SizedBox(width: 6),
              Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ],
          ),
        );
      },
    );
  }
}
