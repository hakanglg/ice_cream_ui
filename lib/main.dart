import 'package:flutter/material.dart';
import 'product/components/progress/circular_progress.dart';

import 'core/theme/light_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavors App',
      home: CircularProgress(),
      theme: lightTheme,
    );
  }
}
