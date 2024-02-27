import 'package:flutter/material.dart';
import 'package:flutter_test_app/components/storage_info_card.dart';
import 'package:flutter_test_app/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recharge",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          StorageInfoComponent(
            svgSrc: "assets/icons/Documents.svg",
            title: "Mobile Recharge",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoComponent(
            svgSrc: "assets/icons/media.svg",
            title: "Transactions",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoComponent(
            svgSrc: "assets/icons/folder.svg",
            title: "Notifications",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoComponent(
            svgSrc: "assets/icons/unknown.svg",
            title: "Profile",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
          StorageInfoComponent(
            svgSrc: "assets/icons/Documents.svg",
            title: "Mobile Recharge",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoComponent(
            svgSrc: "assets/icons/media.svg",
            title: "Transactions",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoComponent(
            svgSrc: "assets/icons/folder.svg",
            title: "Notifications",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }
}
