import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../constants/colors.dart';
import 'package:kartal/kartal.dart';

class SearchBar extends StatelessWidget {
  final String? label;
  final Icon icon;
  final Widget child;

  const SearchBar(
      {Key? key,
      this.label,
      this.icon = const Icon(Icons.search),
      this.child = const BuildFilterFAB()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: cityLights,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: ListTile(
          leading: icon,
          title: buildTextFieldLabel(context),
          trailing: const BuildFilterFAB(),
        ));
  }

  TextField buildTextFieldLabel(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: label,
        hintStyle: context.textTheme.subtitle2,
      ),
    );
  }
}

class BuildFilterFAB extends StatelessWidget {
  const BuildFilterFAB({
    Key? key,
  }) : super(key: key);

  final String filter = "Filter";
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        // backgroundColor: prunusAvium,
        onPressed: () {},
        label: buildWrapIconAndText());
  }

  Wrap buildWrapIconAndText() {
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [buildFabIconSection(), buildFabTextSection()]);
  }

  Icon buildFabIconSection() => const Icon(MaterialIcons.sort);

  Text buildFabTextSection() => Text(filter);
}
