import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AppBarTitleSection extends StatelessWidget {
  final String title;
  final String subtitle;

  const AppBarTitleSection(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: context.textTheme.headline5!
                .copyWith(fontWeight: FontWeight.bold)),
        context.emptySizedHeightBoxLow,
        Text(
          subtitle,
          style: context.textTheme.subtitle2,
        )
      ],
    );
  }
}
