import 'package:flutter/material.dart';
import 'package:ice_cream_ui/core/components/card/flavours_card.dart';
import 'package:ice_cream_ui/core/components/column/column.dart';
import 'package:ice_cream_ui/core/components/list_tile/search_bar.dart';
import 'package:ice_cream_ui/core/components/row/row.dart';
import 'package:ice_cream_ui/core/constants/colors.dart';
import '../../core/components/appbar/appbar_title.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../core/components/title/solo_title.dart';

class HomeView extends StatelessWidget {
  final String appBarTitle = "Hey Emma";
  final String appBarSubtitle = "What flavor do you like to eat?";
  final String search = "Search";
  final String topTitle = "Top Flavours";
  final String popularTitle = "Popular Ice Cream";

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
              Expanded(flex: 3, child: FlavoursCardSection()),
              context.emptySizedHeightBoxLow3x,
              Expanded(flex: 1, child: SoloTitle(title: popularTitle)),
              context.emptySizedHeightBoxLow3x,
              // Expanded(child: ListView.builder(itemBuilder: itemBuilder))
              Expanded(
                flex: 5,
                child: Placeholder(),
              )
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
