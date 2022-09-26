import 'package:caterme_v2/HomePage/model/MenuList.dart';
import 'package:caterme_v2/Settings/ui/screen/Settings.dart';
import 'package:caterme_v2/utils/Images/Images.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../BottomSheet/ui/Screen/Bottomsheet.dart';
import '../../model/AddonsList.dart';
import '../../model/CaroselList.dart';
import '../../model/Flowerslist.dart';
import '../Widget/Addons.dart';
import '../Widget/CaroselSlider.dart';
import '../Widget/Flowers.dart';
import '../Widget/Menu.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BackgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
            icon: ImageIcon(AssetImage(ImageAsset.user.toString()))),
        centerTitle: true,
        title: Image.asset(
          ImageAsset.LOGO,
          fit: BoxFit.contain,
          height: 65,
        ),
        actions: [
          IconButton(
              onPressed: () => null,
              icon: ImageIcon(AssetImage(ImageAsset.search.toString())))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: List1.length,
                  itemBuilder: (context, index) {
                    return List1widget(list1key: List1[index]);
                  },
                ),
              ),
            ),
            Text(
              '        Choose one of our Menus',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: List2.length,
                  itemBuilder: (context, index) {
                    return List2widget(list2key: List2[index]);
                  },
                ),
              ),
            ),
            Text(
              '        Add-ons',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: List3.length,
                  itemBuilder: (context, index) {
                    return List3widget(list3key: List3[index]);
                  },
                ),
              ),
            ),
            Text(
              '        Flowers',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: List4.length,
                  itemBuilder: (context, index) {
                    return List4widget(list4key: List4[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 400.0,
        height: 68.0,
        child: FloatingActionButton.extended(
          backgroundColor: PrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => Modelsheet(),
            );
          },
          label: Container(
            width: 350,
            child: Row(

                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('What s your event?'),
                      Text('Date,Places,guests...')
                    ],
                  ),
                  Spacer(),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.white,
                      ),
                      height: 35,
                      width: 35,
                      child: Center(
                          child: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: PrimaryColor,
                        size: 30,
                      ))),
                ]),
          ),
        ),
      ),
    );
  }
}
