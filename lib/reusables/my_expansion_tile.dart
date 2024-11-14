import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyExpansionTile extends StatelessWidget {
  final Widget title;
  final List<Widget> children;
  final void Function(bool)? onChanged;
  Color? langi;
  Color? langi2;
  MyExpansionTile(
      {super.key,
      required this.title,
      required this.children,
      this.langi,
      this.langi2,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.amber,
      textColor: Colors.amber,
      title: title,
      collapsedBackgroundColor: langi2,
      onExpansionChanged: onChanged,
      children: children,
      backgroundColor: langi,
      shape: RoundedRectangleBorder(side: BorderSide.none),
      expansionAnimationStyle: AnimationStyle(
          curve: Curves.linearToEaseOut,
          duration: Durations.long1,
          reverseDuration: Durations.long1,
          reverseCurve: Curves.easeInCirc),
    );
  }
}
