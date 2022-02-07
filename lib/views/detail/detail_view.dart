import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/column/column.dart';
import '../../core/components/row/row.dart';
import '../../core/components/title/solo_title.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../home/home_view_model.dart';

class DetailView extends StatelessWidget {
  final Product? product;

  const DetailView({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.lightColor,
      appBar: buildAppBar(context), //  APP BAR
      body: Column(
        //  BODY
        children: [
          Expanded(
            flex: 10,
            child: BuildImageSection(product: product), //  IMAGE SECTION
          ),
          Expanded(
            flex: 10,
            child: buildDescriptionSection(context), //  DESCRIPTION SECTION
          )
        ],
      ),
    );
  }

  Container buildDescriptionSection(BuildContext context) {
    return Container(
      width: context.dynamicWidth(1),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: MyRow(
        child: MyColumn(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: SoloTitle(title: product!.title)),
              Expanded(flex: 1, child: buildStartsAndReviewsSection(context)),
              Expanded(flex: 2, child: buildButtonsAndPriceection(context)),
              Expanded(flex: 3, child: buildDescriptionTextSection(context)),
              Expanded(flex: 2, child: buildAddCardButtonContainer()),
              context.emptySizedHeightBoxNormal
            ],
          ),
        ),
      ),
    );
  }

  Row buildButtonsAndPriceection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildAddAndRemoveButtonSection(context),
        buildPriceAndTextSection(context)
      ],
    );
  }

  Text buildDescriptionTextSection(BuildContext context) {
    return Text(
      product!.description,
      style: context.textTheme.bodyText1!.copyWith(
          color: const Color.fromARGB(255, 117, 116, 116), fontSize: 15),
    );
  }

  Container buildAddCardButtonContainer() {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              picoPink,
              Colors.pink,
            ],
          ),
          borderRadius: BorderRadius.circular(15)),
      child: buildAddCardButton(),
    );
  }

  MaterialButton buildAddCardButton() {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      height: double.infinity,
      minWidth: double.infinity,
      // color: product!.color,
      textColor: Colors.white,
      child: const Text(addToCard),
      onPressed: () => {},
      splashColor: product!.lightColor,
    );
  }

  Row buildPriceAndTextSection(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesome.dollar,
          color: prunusAvium,
          size: 30,
        ),
        buildPriceText(context)
      ],
    );
  }

  Text buildPriceText(BuildContext context) {
    return Text(
      product!.price.toString(),
      style: context.textTheme.headline4!
          .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Wrap buildAddAndRemoveButtonSection(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 5,
      children: [
        buildTotalIconButton(
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
            () {}),
        Text("${product!.total.toString()} KG",
            style: context.textTheme.bodyText1),
        buildTotalIconButton(
            const Icon(
              Icons.remove,
              color: Colors.white,
            ),
            () {}),
      ],
    );
  }

  InkWell buildTotalIconButton(Icon icon, Function function) {
    return InkWell(
      onTap: () => function,
      child: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                picoPink,
                Colors.pink,
              ],
            ),
            borderRadius: BorderRadius.circular(5)),
        child: icon,
      ),
    );
  }

  Row buildStartsAndReviewsSection(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildStarIconsWrap(),
        context.emptySizedWidthBoxLow,
        buildStarAndReviewPointText(context)
      ],
    );
  }

  Wrap buildStarIconsWrap() {
    return Wrap(
      children: [
        for (int i = 0; i < product!.star.toInt(); i++) buildActiveStarIcon(),
        for (int j = 0; j < 5 - product!.star.toInt(); j++)
          buildDeactiveStarIcon()
      ],
    );
  }

  Icon buildActiveStarIcon() {
    return const Icon(
      Icons.star,
      color: sourLemon,
      size: 20,
    );
  }

  Icon buildDeactiveStarIcon() {
    return const Icon(
      Icons.star,
      color: cloudGrey,
      size: 20,
    );
  }

  Wrap buildStarAndReviewPointText(BuildContext context) {
    return Wrap(
      children: [
        buildStarPointText(context),
        context.emptySizedWidthBoxLow,
        buidReviewText(context)
      ],
    );
  }

  Text buildStarPointText(BuildContext context) {
    return Text(product!.star.toString(), style: context.textTheme.subtitle2);
  }

  Text buidReviewText(BuildContext context) {
    return Text(
      "(${product!.reviews} Reviews)",
      style: context.textTheme.subtitle2,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: buildBackButton(context),
      actions: [buildFavButton()],
    );
  }

  IconButton buildBackButton(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_rounded, color: product!.color),
        onPressed: () {
          context.pop();
        });
  }

  IconButton buildFavButton() {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.favorite_border,
          color: product!.color,
        ));
  }
}

class BuildImageSection extends StatelessWidget {
  const BuildImageSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.dynamicWidth(1),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
        // color: product!.lightColor,
      ),
      child: Image.asset(
        product!.image,
        fit: BoxFit.contain,
      ),
    );
  }
}
