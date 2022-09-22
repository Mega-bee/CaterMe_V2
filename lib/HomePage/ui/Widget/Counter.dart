import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child:
          IconButton(onPressed: () {


          }, icon: Icon(Icons.add))


      );
        Container(
          color: Colors.blueGrey,
          width:300 ,
        );

  }
}
