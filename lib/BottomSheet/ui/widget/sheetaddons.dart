import 'package:caterme_v2/HomePage/ui/Widget/counterafter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/sheetaddonslist.dart';




class Listswidget extends StatelessWidget {
  late final listslistmodle listskey;
  Listswidget({required this.listskey});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            listskey.img.toString(),
          ),
          Spacer(),
          Column(children: [
            Text('Iftar'),
            Text('100 sar'),
            Container(
             child: counterafter(),
            )
          ],)
        ],
      ),

    );

  }
}
