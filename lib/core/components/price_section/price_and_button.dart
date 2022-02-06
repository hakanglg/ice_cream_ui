import 'package:flutter/material.dart';
import 'price_icon_text.dart';
import 'package:kartal/kartal.dart';

import '../../../views/home/home_view_model.dart';
import '../card/flavours_card.dart';

abstract class PriceAndButton extends StatelessWidget {
  final Product? product;

  const PriceAndButton({Key? key, this.product}) : super(key: key);

  @override
  Widget (BuildContext context, int index) {
    return Row(
      children: [
        PriceIconAndText(price: products[index].price.toString()),
        context.emptySizedWidthBoxHigh,
        buildAddFAB()
      ],
    );
  }
}
