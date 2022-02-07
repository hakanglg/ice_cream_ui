import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/appbar/appbar_title.dart';

import '../../core/components/card/flavour_card.dart';
import '../../core/components/card/mini_card.dart';
import '../../core/components/card/top_section_card.dart';
import '../../core/components/list_tile/search_bar.dart';
import '../../core/components/row/row.dart';
import '../../core/components/title/solo_title.dart';
import '../../core/constants/strings.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  final Product? product;

  const HomeView({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: MyRow(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.emptySizedHeightBoxLow3x,
              Expanded(flex: 1, child: SearchBar(label: search)),
              context.emptySizedHeightBoxLow3x,
              Expanded(flex: 1, child: SoloTitle(title: topTitle)),
              Expanded(flex: 3, child: FlavourCard()),
              context.emptySizedHeightBoxLow3x,
              Expanded(flex: 1, child: SoloTitle(title: popularTitle)),
              // context.emptySizedHeightBoxLow3x,
              Expanded(flex: 1, child: MiniCardsListView()),
              context.emptySizedHeightBoxLow3x,
              Expanded(flex: 1, child: SoloTitle(title: itemTitle)),
              Expanded(flex: 4, child: TopSectionCards()),
              context.emptySizedHeightBoxLow3x,
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: AppBarTitleSection(
        title: appBarTitle,
        subtitle: appBarSubtitle,
      ),
      actions: [
        appBarIconSection(),
      ],
    );
  }

  Image appBarIconSection() => Image.asset("assets/images/avatar.png");
}
