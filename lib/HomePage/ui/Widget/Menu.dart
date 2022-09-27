import 'package:caterme_v2/HomePage/ui/Widget/counterafter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/CaroselList.dart';
import '../../model/MenuList.dart';
import 'Counter.dart';



class List2widget extends StatelessWidget {
  late final Secondlistmodle list2key;
  List2widget({required this.list2key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children:[ Positioned.fill(
                child: Image.asset(
                  list2key.img.toString(),fit: BoxFit.fill,
                ),
              ),
                Positioned.fill(child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Align(
                    child: counter(),
                    alignment: Alignment.topRight,
                  ),
                ))
              ]
              ),
            ),
          ),
        ),

    );
  }
}
