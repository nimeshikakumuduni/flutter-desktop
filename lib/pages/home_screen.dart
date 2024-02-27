import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants.dart';
import 'package:flutter_test_app/pages/header.dart';
import 'package:flutter_test_app/pages/menu.dart';
import 'package:flutter_test_app/pages/side_menu.dart';
import 'package:flutter_test_app/pages/system_files.dart';
import 'package:flutter_test_app/resposive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const SystemFiles(),
                      const SizedBox(height: defaultPadding),
                      const Menu(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) const SideMenu(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
