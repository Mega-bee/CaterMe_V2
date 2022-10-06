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
        centerTitle: false,
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
                            Text('Notifications',style: TextStyle(color: ThemeHelper().getisDark()
                                ? Colors.white
                                : Colors.black,  ),),
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
                            Text('Orders',style: TextStyle(color: ThemeHelper().getisDark()
                                ? Colors.white
                                : Colors.black,  ),),
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
                            Text('Occasions',style: TextStyle(color: ThemeHelper().getisDark()
                                ? Colors.white
                                : Colors.black,  ),),
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
                            Text('Support',style: TextStyle(color: ThemeHelper().getisDark()
                                ? Colors.white
                                : Colors.black,  ),),
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
                              Icon(Icons.person_outline,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,),
                              Text('  Profile',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,  ),),
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
                              Icon(Icons.location_on_outlined,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,),
                              Text(
                                '  Addreses',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),)
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
                              Icon(Icons.people_alt_outlined,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,),
                              Text('  Freinds',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),),
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
                              Icon(Icons.payment_outlined,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,),
                              Text('  Payment method',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),),
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
                                              fontSize: 20,
                                              color: ThemeHelper().getisDark()
                                                  ? Colors.white
                                                  : Colors.black,
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
                                            color: select == true
                                                ? Color(0xFFBDBDBD)
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
                                                ? const Color(0xFFBDBDBD)
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
                              Icon(Icons.language_outlined,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,),
                              Text('  Languages',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),),
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
                                            'Mode',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            AppThemeDataService()
                                                .switchDarkMode(false);
                                            Navigator.pop(context);
                                            print(select);
                                            setState(() {
                                              light = true;
                                            });
                                          },
                                          child: Container(
                                            color: light == true
                                                ? Color(0xFFBDBDBD)
                                                : Colors.white,
                                            width: double.infinity,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(15.0),
                                              child: Text('Light'),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            AppThemeDataService()
                                                .switchDarkMode(true);
                                            Navigator.pop(context);
                                            print(select);
                                            setState(() {
                                              light = false;
                                            });
                                          },
                                          child: Container(
                                            color: light == false
                                                ? const Color(0xFFBDBDBD)
                                                : Colors.white,
                                            width: double.infinity,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(15.0),
                                              child: Text('Dark'),
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
                              Icon(Icons.light_mode_outlined,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),
                              Text('  Mode',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),),
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
                            Icon(Icons.newspaper_outlined,color:ThemeHelper().getisDark()
                                ? Colors.white
                                : Colors.black,),
                            Text('  Terms',style: TextStyle(color: ThemeHelper().getisDark()
                                ? Colors.white
                                : Colors.black,
                            ),),
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
                              Icon(Icons.contact_mail_outlined,color:ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,),
                              Text(
                                '  Contact us',style: TextStyle(color: ThemeHelper().getisDark()
                                  ? Colors.white
                                  : Colors.black,
                              ),
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