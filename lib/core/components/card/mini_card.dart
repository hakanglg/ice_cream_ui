import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../views/detail/detail_view.dart';
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailView(
                          product: products[index],
                        ),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: products[index].lightColor,
                  ),
                  width: context.dynamicWidth(0.3),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1, child: buildImageSection(index, context)),
                      Expanded(
                          flex: 2,
                          child: buildFlavorTextSection(index, context))
                    ],
                  ),
                ),
              ),
            ));
  }

  Container buildImageSection(int index, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: products[index].color,
      ),
      width: context.dynamicHeight(1),
      child: MyColumn(
        child: Center(
          child: Image.asset(
            products[index].image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Container buildFlavorTextSection(int index, BuildContext context) {
    return Container(
      height: context.dynamicHeight(1),
      child: Center(
        child: Text(
          products[index].flavor,
          style: context.textTheme.bodyText1,
        ),
      ),
    );
  }
}
