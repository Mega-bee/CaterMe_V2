import 'package:caterme_v2/Contact%20us/ui/Screen/COntactus.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/Images/Images.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Settings',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                width: double.infinity,
                height: 110,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: BackgroundColor,
                            ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.notifactions,
                              ),
                            ),
                            SizedBox(height: 10,),

                            Text('Notifications'),

                          ],
                        ),
                        Column(
                          children: [
                            Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: BackgroundColor,
                            ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.orders,

                              ),
                            ),
                            SizedBox(height: 10,),

                            Text('Orders'),


                          ],
                        ),
                        Column(
                          children: [
                            Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: BackgroundColor,
                            ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.occasions,

                              ),
                            ),
                            SizedBox(height: 10,),

                            Text('Occasions'),


                          ],
                        ),
                        Column(
                          children: [
                            Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: BackgroundColor,
                            ),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                ImageAsset.support,
                                
                              ),
                            ),
                            SizedBox(height: 10,),
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
                  color: Colors.white,

                ),
                height: 500,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Icon(Icons.person),
                        Text('  Profile'),


                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on),
                          Text('  Addreses'),


                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.people_alt),
                          Text('  Freinds'),


                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.payment),
                          Text('  Payment method'),


                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.language),
                          Text('  Languages'),


                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.light_mode),
                          Text('  Mode'),


                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.newspaper_outlined),
                          Text('  Terms'),


                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),
                    InkWell(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const contactus()),
                        );
                      },
                      child: Padding(

                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.contact_mail),
                            Text('  Contact us'),


                          ],),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Divider(color: Colors.black,),
                    ),




                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.logout,color: PrimaryColor,size: 15,),
                      Text('  sign out',style: TextStyle(color: PrimaryColor),)
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
