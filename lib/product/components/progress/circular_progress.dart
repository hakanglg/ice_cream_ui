import 'package:flutter/material.dart';
import '../../../views/detail/detail_view.dart';
import '../../../views/home/home_view.dart';
import 'package:kartal/kartal.dart';

class CircularProgress extends StatefulWidget {
  @override
  State<CircularProgress> createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> {
  bool isLoading = false;

  Future<void> getUsers(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(context.durationNormal);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : HomeView());
  }
}
