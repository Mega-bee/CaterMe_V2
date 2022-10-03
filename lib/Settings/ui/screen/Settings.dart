import 'package:caterme_v2/Auth/signin_screen.dart';
import 'package:caterme_v2/Contact%20us/ui/Screen/COntactus.dart';
import 'package:caterme_v2/Profile/ui/Screens/Profile.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Addresses/UI/Screens/addresses_screen.dart';
import '../../../Friends/UI/Screens/friends_screen.dart';
import '../../../Hive/Hive.dart';
import '../../../Occasions/UI/Screen/occasions_screen.dart';
import '../../../Orders/UI/Screens/orders_screen.dart';
import '../../../Payment method/UI/Screens/payments_method_screen.dart';
import '../../../Theme/Themes.dart';
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
                              child:Icon(Icons.notifications_outlined,color: PrimaryColor,)
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Notifications'),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=> OrderScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: BackgroundColor,
                                ),
                                width: 60,
                                height: 60,
                                child:Icon(Icons.list_alt_outlined,color: PrimaryColor,)
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
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=> OccasionsScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: BackgroundColor,
                                ),
                                width: 60,
                                height: 60,
                                child: Icon(Icons.calendar_today_outlined,color: PrimaryColor,)
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
                              child: Icon(Icons.support_agent_outlined,color: PrimaryColor,)
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
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
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
                              Icon(Icons.person_outline),
                              Text('  Profile'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                        child: Divider(
                          color:Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddressesScreen()),
                        );},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                '  Addreses',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FriendsScreen()),
                        );

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.people_alt_outlined),
                              Text('  Freinds'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentMethods()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.payment_outlined),
                              Text('  Payment method'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Divider(
                          color: Colors.grey,
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
                              Icon(Icons.language_outlined),
                              Text('  Languages'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Divider(
                          color: Colors.grey,
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
                              Icon(Icons.light_mode_outlined),
                              Text('  Mode'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Divider(
                          color: Colors.grey,
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
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Divider(
                          color: Colors.grey,
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
                              Icon(Icons.contact_mail_outlined),
                              Text(
                                '  Contact us',
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                      //   child: Divider(
                      //     color: Colors.grey,
                      //   ),
                      // ),
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
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Color(0xFFEC605A),
                        size: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => SigninScreen()),
                          );
                        },
                        child: Text(
                          '  sign out',
                          style: TextStyle(color: Color(0xFFEC605A)),
                        ),
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