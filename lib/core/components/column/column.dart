import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  final Widget child;

  const MyColumn({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 1,
        ),
        Expanded(flex: 19, child: child),
        Spacer(
          flex: 1,
        )
      ],
    );
  }
}
