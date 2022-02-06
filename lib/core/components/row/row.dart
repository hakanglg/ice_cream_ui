import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  final Widget child;

  const MyRow({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
