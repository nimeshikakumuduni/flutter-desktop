import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/home_screen.dart';
import 'package:flutter_test_app/pages/left_colum.dart';
import 'package:flutter_test_app/resposive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: LeftSideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
