import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  final String title, subtitle;
  final void Function() onTap;
  IconData? icon;
  MyListTile(
      {super.key,
      required this.title,
      this.icon,
      required this.subtitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: ListTile(
          tileColor: Theme.of(context).colorScheme.scrim,
          title: Text(title, style: TextStyle(fontSize: 20)),
          subtitle: Text(subtitle),
          trailing: Icon(
            icon,
            size: 30,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          onTap: onTap),
    );
  }
}
