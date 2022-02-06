import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../views/home/home_view_model.dart';
import '../column/column.dart';

class MiniCardsListView extends StatelessWidget {
  final Product? product;

  const MiniCardsListView({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: products[index].lightColor),
                height: context.dynamicHeight(1),
                width: context.dynamicWidth(0.35),
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  // visualDensity: VisualDensity(horizontal: -4, vertical: -4),

                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: products[index].color,
                    ),
                    height: 50,
                    width: 50,
                    child: MyColumn(
                      child: Image.asset(
                        products[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Container(
                    child: Text(
                      products[index].flavor,
                      style: context.textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
            ));
  }
}
