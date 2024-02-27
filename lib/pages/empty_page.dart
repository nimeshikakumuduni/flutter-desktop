import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/constants.dart';
import 'package:flutter_test_app/pages/empty_page_header.dart';
import 'package:flutter_test_app/resposive.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: EmptyPageHeader(),
              ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      height: 140,
                      width: 140,
                      child: SvgPicture.asset(
                        "assets/icons/hand-waving-bold.svg",
                      ),
                    ),
                    Text(
                      "Hello,",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
