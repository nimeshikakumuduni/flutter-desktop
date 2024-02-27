import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/constants.dart';
import 'package:flutter_test_app/pages/main_screen.dart';
import 'package:flutter_test_app/resposive.dart';

class EmptyPageHeader extends StatelessWidget {
  const EmptyPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: defaultPadding),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white10),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(defaultPadding * 0.75),
              margin:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: SvgPicture.asset(
                "assets/icons/arrow-circle-left-bold.svg",
                height: 40,
              ),
            ),
            if (!Responsive.isMobile(context))
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Text("Back"),
              ),
            const SizedBox(
              width: defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
