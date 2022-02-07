import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../../views/detail/detail_view.dart';
import '../../../views/home/home_view_model.dart';
import 'package:kartal/kartal.dart';

import '../../constants/colors.dart';
import '../column/column.dart';
import '../row/row.dart';


class FlavourCard extends StatelessWidget {
  final Product? product;

  const FlavourCard({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailView(
                        product: products[index],
                      ),
                    ));
              },
              child: Card(
                child: Container(
                  width: context.dynamicWidth(0.9),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: products[index].lightColor),
                  child: MyColumn(
                    child: MyRow(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(flex: 1, child: buildImageSection(index)),
                        Expanded(
                            flex: 1,
                            child: buildCardDescriptionSection(index, context))
                      ],
                    )),
                  ),
                ),
              ),
            ));
  }

  Column buildCardDescriptionSection(int index, BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: buildTitleSection(index, context)),
        Expanded(flex: 3, child: buildWeightAndPointSection(context, index)),
        Expanded(flex: 3, child: buildPriceAndFABSection(index, context))
      ],
    );
  }

  Row buildPriceAndFABSection(int index, BuildContext context) {
    return Row(
      children: [
        buildPriceAndTextSection(index, context),
        context.emptySizedWidthBoxHigh,
        buildFABAdd()
      ],
    );
  }

  Row buildPriceAndTextSection(int index, BuildContext context) {
    return Row(
      children: [buildPriceIcon(), buildPriceText(index, context)],
    );
  }

  Icon buildPriceIcon() {
    return Icon(
      FontAwesome.dollar,
      color: prunusAvium,
      size: 13,
    );
  }

  Text buildPriceText(int index, BuildContext context) {
    return Text(
      products[index].price.toString(),
      style: context.textTheme.bodyText1,
    );
  }

  FloatingActionButton buildFABAdd() {
    return FloatingActionButton.small(
      heroTag: UniqueKey(),
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }

  Row buildWeightAndPointSection(BuildContext context, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildWeightSection(context, index),
        context.emptySizedWidthBoxHigh,
        buildStartAndPointSection(index, context)
      ],
    );
  }

  Text buildTitleSection(int index, BuildContext context) {
    return Text(
      products[index].title,
      style: context.textTheme.headline6,
    );
  }

  Container buildWeightSection(BuildContext context, int index) {
    return Container(
      padding: context.paddingLow,
      decoration:
          ShapeDecoration(shape: const StadiumBorder(), color: sourLemon),
      child: Text("${products[index].total} KG",
          style: context.textTheme.bodyText1),
    );
  }

  Row buildStartAndPointSection(int index, BuildContext context) {
    return Row(
      children: [buildStarIcon(), buildStartPointText(index, context)],
    );
  }

  Text buildStartPointText(int index, BuildContext context) {
    return Text(products[index].star.toString(),
        style: context.textTheme.bodyText1);
  }

  Image buildImageSection(int index) {
    return Image.asset(
      products[index].image,
      fit: BoxFit.contain,
    );
  }
}

class buildStarIcon extends StatelessWidget {
  const buildStarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: sourLemon,
    );
  }
}
