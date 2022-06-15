import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 65, 112, 187),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(text: 'People', icon: Icons.people),
            const SizedBox(height: 48),
            buildMenuItem(text: 'Last_Forecast', icon: Icons.reply_all_sharp),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Timer_On', icon: Icons.access_time_filled_sharp),
            const SizedBox(height: 48),
            buildMenuItem(text: 'Road_state', icon: Icons.garage_rounded),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Join_Community', icon: Icons.join_full_outlined),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  String? text,
  IconData? icon,
  VoidCallback? onCliked, 
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text!, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: () {},
  );
}
