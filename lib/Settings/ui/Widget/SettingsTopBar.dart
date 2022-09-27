import 'package:caterme_v2/utils/Images/Images.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/material.dart';

class SettingsTopBar extends StatelessWidget {
  const SettingsTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        InkWell(
          child: Column(children: [
            Container(
              width: 50,
              height: 50,
              color: BackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.notifications,
                    color: PrimaryColor,
                    size: 20,
                  ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Notification")
          ]),
        ),
        InkWell(
            child: Column(children: [
          Container(
            width: 50,
            height: 50,
            color: BackgroundColor,
            child:
            ImageIcon(
              AssetImage(ImageAsset.ORDER),
              color: PrimaryColor,
              size: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Order")
        ])),
        InkWell(
            child: Column(children: [
          Container(
            width: 50,
            height: 50,
            color: BackgroundColor,
            child:ImageIcon(
              AssetImage(ImageAsset.OCCASION),
              color: PrimaryColor,
              size: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Occasions")
        ])),
        InkWell(
            child: Column(children: [
          Container(
            width: 50,
            height: 50,
            color: BackgroundColor,
            child: Image.asset(
              ImageAsset.SUPPORT,
              color: PrimaryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Support")
        ])),
      ]),
    );
  }
}
