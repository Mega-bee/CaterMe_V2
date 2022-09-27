import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/AddonsList.dart';



class List3widget extends StatelessWidget {
  late final Thirdlistmodle list3key;
  List3widget({required this.list3key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => null,
        child: SizedBox(
          height: 300,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                list3key.img.toString(),fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
