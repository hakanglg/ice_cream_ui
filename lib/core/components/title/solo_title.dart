import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SoloTitle extends StatelessWidget {
  final String title;

  const SoloTitle({Key? key, required this.title}) : super(key: key);
  



  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.headline6,
    );
  }
}
