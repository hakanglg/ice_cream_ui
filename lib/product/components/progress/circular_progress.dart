import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../views/home/home_view.dart';

class CircularProgress extends StatefulWidget {
  const CircularProgress({Key? key}) : super(key: key);

  @override
  State<CircularProgress> createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> {
  bool isLoading = false;

  Future<void> getUsers(BuildContext context) async { // 1 SECONDS CIRCULAR PROGRESS IND.
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
    super.initState();
    getUsers(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : const HomeView());
  }
}
