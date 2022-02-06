import 'package:flutter/material.dart';
import 'core/theme/light_theme.dart';
import 'views/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavors App',
      home: HomeView(),
      theme: lightTheme,
    );
  }
}
