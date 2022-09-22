import 'package:caterme_v2/HomePage/model/MenuList.dart';
import 'package:caterme_v2/utils/Images/Images.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
        backgroundColor:BackgroundColor,
        leading: IconButton(onPressed: () => null, icon: ImageIcon(AssetImage(ImageAsset.user.toString()))),
        centerTitle:true,
        title: Image.asset(ImageAsset.LOGO,fit: BoxFit.contain,height: 65,),
        actions: [
          IconButton(onPressed: () => null, icon: ImageIcon(AssetImage(ImageAsset.search.toString())))
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
            Text('        Choose one of our Menus',style: TextStyle(fontWeight: FontWeight.w800),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height:200,
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
            Text('        Add-ons',style: TextStyle(fontWeight: FontWeight.w800),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height:150,
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
            Text('        Flowers',style: TextStyle(fontWeight: FontWeight.w800),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height:150,
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
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.95,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 400.0,
                        height: 68.0,
                        child: FloatingActionButton.extended(
                          backgroundColor: PrimaryColor,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          label: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.calendar_month),
                                Column(
                                  children: [
                                    Text('Whats your event?'),
                                    Text('Date,Places,guests...')
                                  ],
                                ),
                                Icon(Icons.transit_enterexit_sharp)
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SfCalendar(
                          view: CalendarView.month,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text('Number of people'),
                            Spacer(),
                            IconButton(
                                onPressed: () {

                                },
                                icon: Icon(Icons.keyboard_arrow_left)),
                            Text('n'),
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.keyboard_arrow_right))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  fixedSize: Size(300, 50)),
                              onPressed: null,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(children: [
                                    Text('Distrects',style: TextStyle(color: Colors.black),),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_sharp)

                                  ],

                                  )),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  fixedSize: Size(300, 50)),
                              onPressed: null, child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  Text('Categories',style: TextStyle(color: Colors.black),),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_sharp)

                                ],

                                )),

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                child: Center(child: Icon(Icons.keyboard_arrow_up_outlined,color: PrimaryColor,size: 30,))
              ),
            ]),
          ),
        ),
      ),




    );
  }
}
