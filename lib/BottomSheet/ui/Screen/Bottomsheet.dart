import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../utils/style/colors.dart';
import '../../model/sheetaddonslist.dart';
import '../widget/sheetaddons.dart';

class Modelsheet extends StatefulWidget {
  const Modelsheet({Key? key}) : super(key: key);

  @override
  State<Modelsheet> createState() => _ModelsheetState();
}

class _ModelsheetState extends State<Modelsheet> {
  late int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: BackgroundColor,

      body: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        decoration: new BoxDecoration(
          color: BackgroundColor,
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
                  label: Container(
                    width: 350,
                    child: Row(children: [
                      Icon(Icons.calendar_month),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Whats your event?'),
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
                              child: Text(
                                'X',
                                style: TextStyle(
                                    color: PrimaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25),
                              ))),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        height: 550,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  hintText: 'Title of occasion.',
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SfCalendar(
                                view: CalendarView.month,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Number of guests',
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        n--;
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.arrow_back_ios_new_sharp)),
                                  Text('  ' + n.toString() + '  '),
                                  IconButton(
                                      onPressed: () {
                                        n++;
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.arrow_forward_ios_sharp)),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time of the event',
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.arrow_back_ios_new_sharp)),
                                  Text('  ' + n.toString() + '  '),
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.arrow_forward_ios_sharp)),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: 160,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Delivering to',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800, fontSize: 15),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: null,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: PrimaryColor)
                                    ),
                                    width: 80,
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        'Select',
                                        style: TextStyle(color: PrimaryColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text('Select address'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Pick a saved delivery adress or create a new',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'one toplace your order',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: 300,
                      child:           Padding(
                        padding: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                        child: SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: Lists.length,
                            itemBuilder: (context, index) {
                              return Listswidget(listskey: Lists[index]);
                            },
                          ),
                        ),
                      ),


                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 150,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0,left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text('Tax',style: TextStyle(),),
                                Spacer(),
                                Text('SAR number')
                              ],
                            ),
                            Divider(thickness: 2,),
                            Row(
                              children: [
                                Text('Dabernni price'),
                                Spacer(),
                                Text('SAR number')
                              ],
                            ),
                            Divider(thickness: 2,),

                            Row(
                              children: [
                                Text('Total'),
                                Spacer(),
                                Text('SAR number')
                              ],
                            ),

                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 30,),
                    FloatingActionButton.extended(backgroundColor: PrimaryColor,
                      onPressed: null, label: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 300,
                      height: 50,
                      child: Center(child: Text('Checkout',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),)),
                    ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
