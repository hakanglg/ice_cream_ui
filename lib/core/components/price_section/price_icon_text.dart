import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kartal/kartal.dart';

import '../../constants/colors.dart';

class PriceIconAndText extends StatelessWidget {
  final String price;
  const PriceIconAndText({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [buildIcon(), buildText(context)],
    );
  }

  Icon buildIcon() {
    return const Icon(
      FontAwesome.dollar,
      color: prunusAvium,
      size: 13,
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      price,
      style: context.textTheme.bodyText1,
    );
  }
}
