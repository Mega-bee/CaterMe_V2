import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/Flowerslist.dart';



class List4widget extends StatelessWidget {
  late final Forthlistmodle list4key;
  List4widget({required this.list4key});



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
                list4key.img.toString(),fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
