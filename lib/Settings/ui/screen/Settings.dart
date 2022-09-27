import 'package:caterme_v2/Contact%20us/ui/Screen/COntactus.dart';
import 'package:caterme_v2/Profile/ui/Screens/Profile.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../Hive/Hive.dart';
import '../../../Theme/Themes.dart';
import '../../../main.dart';
import '../../../utils/Images/Images.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool? light = false;
  bool? select = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeHelper().getisDark()
            ? Colors.black
            : PrimaryColor,
        title: Text(
          'Settings',
          style: TextStyle( color:Colors.white              ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white
            )),
      ),
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeHelper().getisDark()
                      ? Colors.black
                      : Colors.white,
                ),
                width: double.infinity,
                height: 110,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: BackgroundColor,
                              ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.notifactions,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Notifications'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: BackgroundColor,
                              ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.orders,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Orders'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: BackgroundColor,
                              ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.occasions,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Occasions'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: BackgroundColor,
                              ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.support,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Support'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeHelper().getisDark()
                      ? Colors.black
                      : Colors.white,                ),
height: 520,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const profile()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            Text('  Profile'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              '  Addreses',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.people_alt),
                          Text('  Freinds'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.payment),
                          Text('  Payment method'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => StatefulBuilder(
                                  builder: (context, setState) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.26,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              'Language',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              print(select);
                                              setState(() {
                                                select = !select!;
                                              });
                                            },
                                            child: Container(
                                              color: select == true
                                                  ? Color(0xffEC605A)
                                                  : Colors.white,
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Text('English'),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              print(select);
                                              setState(() {
                                                select = !select!;
                                              });
                                            },
                                            child: Container(
                                              color: select == false
                                                  ? Color(0xffEC605A)
                                                  : Colors.white,
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Text('العربية'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.language),
                            Text('  Languages'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) =>
                                StatefulBuilder(builder: (context, setState) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.26,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mode',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          InkWell(
                                            onTap: () {

                                              light = !light!;
                                              AppThemeDataService()
                                                  .switchDarkMode(true);
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              color: light == false
                                                  ? Color(0xffEC605A)
                                                  : Colors.white,
                                              height: 25,
                                              width: double.infinity,
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.dark_mode, color: ThemeHelper().getisDark()
                                                        ? Colors.white
                                                        : Colors.black,                ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text('dark',style: TextStyle( color: ThemeHelper().getisDark()
                                                        ? Colors.white
                                                        : Colors.black,                ),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {

                                              AppThemeDataService()
                                                  .switchDarkMode(false);
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              color: light == true
                                                  ? Color(0xffEC605A)
                                                  : Colors.white,
                                              height: 25,
                                              width: double.infinity,
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.light_mode),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      'light',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.light_mode),
                            Text('  Mode'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.newspaper_outlined),
                          Text('  Terms'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const contactus()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.contact_mail),
                            Text(
                              '  Contact us',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    // Card(
                    //     elevation: 5,
                    //     shadowColor: Colors.red,
                    //     color: ThemeHelper().getisDark()
                    //         ? Colors.black
                    //         : PrimaryColor,
                    //     child: Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Text(
                    //               "S.of(context).theme",
                    //               style: TextStyle(color: Colors.white),
                    //             ),
                    //             PopupMenuButton(
                    //               color: ThemeHelper().getisDark()
                    //                   ? Colors.black
                    //                   : PrimaryColor,
                    //               icon: Icon(
                    //                 Icons.color_lens,
                    //                 color: Colors.red,
                    //               ),
                    //               itemBuilder: (context) {
                    //                 return [
                    //                   PopupMenuItem(
                    //                       height: 2,
                    //                       textStyle:
                    //                           TextStyle(color: Colors.red),
                    //                       value: 0,
                    //                       child: Text("S.of(context).theme")),
                    //                   PopupMenuItem(
                    //                       textStyle:
                    //                           TextStyle(color: Colors.white),
                    //                       value: 1,
                    //                       child: Text("S.of(context).dark")),
                    //                   PopupMenuItem(
                    //                       textStyle:
                    //                           TextStyle(color: Colors.white),
                    //                       value: 2,
                    //                       child: Text("S.of(context).white")),
                    //                 ];
                    //               },
                    //               onSelected: (value) {
                    //                 if (value == 1) {
                    //                   AppThemeDataService()
                    //                       .switchDarkMode(true);
                    //                   Navigator.pop(context);
                    //                 }
                    //                 if (value == 2) {
                    //                   AppThemeDataService()
                    //                       .switchDarkMode(false);
                    //                   Navigator.pop(context);
                    //                 }
                    //               },
                    //             ),
                    //           ],
                    //         ))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeHelper().getisDark()
                      ? Colors.black
                      : Colors.white,
                ),
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: PrimaryColor,
                        size: 15,
                      ),
                      Text(
                        '  sign out',
                        style: TextStyle(color: PrimaryColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
