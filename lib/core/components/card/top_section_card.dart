import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kartal/kartal.dart';

import '../../../views/detail/detail_view.dart';
import '../../../views/home/home_view_model.dart';
import '../../constants/colors.dart';
import '../column/column.dart';
import '../row/row.dart';

class TopSectionCards extends StatelessWidget {
  const TopSectionCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) => buildMyCard(context, index));
  }

  Padding buildMyCard(BuildContext context, int index) {
    return Padding(
      padding:
          EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.02),
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
          width: context.dynamicWidth(0.43),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: products[index].lightColor),
          child: MyColumn(
            child: MyRow(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildImage(index),
                  buildTitleText(index, context),
                  buildFlavorText(index, context),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            FontAwesome.dollar,
                            color: prunusAvium,
                            size: 13,
                          ),
                          Text(
                            products[index].price.toString(),
                            style: context.textTheme.bodyText1,
                          )
                        ],
                      ),
                      context.emptySizedWidthBoxHigh,
                      FloatingActionButton.small(
                        heroTag: UniqueKey(),
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text buildTitleText(int index, BuildContext context) {
    return Text(
      products[index].title,
      style: context.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Center buildImage(int index) {
    return Center(
      child: SizedBox(
        height: 90,
        child: Image.asset(
          products[index].image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Text buildFlavorText(int index, BuildContext context) {
    return Text(
      products[index].flavor,
      style: context.textTheme.subtitle2,
    );
  }
}
