import 'package:flutter/material.dart';
import 'product/components/progress/circular_progress.dart';

import 'core/theme/light_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavors App',
      home: const CircularProgress(),
      theme: lightTheme,
    );
  }
}
