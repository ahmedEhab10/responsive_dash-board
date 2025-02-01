import 'package:flutter/material.dart';

class Custom_Container extends StatelessWidget {
  Custom_Container({super.key, required this.childwidget, this.padding});
  Widget childwidget;
  double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding ?? 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: childwidget);
  }
}
