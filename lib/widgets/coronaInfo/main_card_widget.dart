import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  final Widget child;

  MainCardWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: child,
      );
  }
}