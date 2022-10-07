// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;
  const AppCard(
      {super.key,
      required this.child,
      required this.borderStyle,
      required this.boxShadowColor});

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: const EdgeInsets.all(20.0),
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: widget.borderStyle ??
                    Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                      color: widget.boxShadowColor ?? Colors.black,
                      offset: Offset(10.0, 10.0))
                ]),
            padding: const EdgeInsets.all(20.0),
            child: widget.child,
          ),
        )
      ],
    );
  }
}
