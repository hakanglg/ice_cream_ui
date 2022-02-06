import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kartal/kartal.dart';

import '../../constants/colors.dart';
import '../column/column.dart';

class FlavoursCardSection extends StatelessWidget {
  const FlavoursCardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: firstDate,
        child: MyColumn(
          child: Row(
            children: [
              Expanded(child: buildCardImageSection()),
              Expanded(child: buildCardRightSection(context))
            ],
          ),
        ));
  }

  Column buildCardRightSection(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildCardTitleSection(context),
        context.emptySizedHeightBoxLow,
        buildWeightAndStarPointSection(context),
        context.emptySizedHeightBoxLow,
        buildPriceAndFABSection(context)
      ],
    );
  }

  Image buildCardImageSection() {
    return Image.asset(
      "assets/images/raspberry.png",
      fit: BoxFit.contain,
    );
  }
}

Row buildPriceAndFABSection(BuildContext context) {
  return Row(
    children: [
      buildPriceIconAndText(context),
      context.emptySizedWidthBoxHigh,
      buildAddFAB()
    ],
  );
}

Row buildPriceIconAndText(BuildContext context) {
  return Row(
    children: [buildPriceIcon(), buildPriceText(context)],
  );
}

Icon buildPriceIcon() {
  return Icon(
    FontAwesome.dollar,
    color: prunusAvium,
    size: 13,
  );
}

Text buildPriceText(BuildContext context) {
  return Text(
    "14.60",
    style: context.textTheme.bodyText1,
  );
}

FloatingActionButton buildAddFAB() {
  return FloatingActionButton.small(
    onPressed: () {},
    child: Icon(Icons.add),
  );
}

Text buildCardTitleSection(BuildContext context) {
  return Text(
    "Vanilla Ice Cream",
    style: context.textTheme.headline6,
  );
}

Row buildWeightAndStarPointSection(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      buildTotalSection(context),
      context.emptySizedWidthBoxHigh,
      buildStarIconAndPointSection(context)
    ],
  );
}

Container buildTotalSection(BuildContext context) {
  return Container(
    padding: context.paddingLow,
    decoration: ShapeDecoration(shape: StadiumBorder(), color: sourLemon),
    child: Text("1 KG", style: context.textTheme.bodyText1),
  );
}

Row buildStarIconAndPointSection(BuildContext context) {
  return Row(
    children: [buildStarIcon(), buildStarPoint(context)],
  );
}

Icon buildStarIcon() {
  return Icon(
    Icons.star,
    color: sourLemon,
  );
}

Text buildStarPoint(BuildContext context) =>
    Text("4.9", style: context.textTheme.bodyText1);
