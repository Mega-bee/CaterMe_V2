import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class counterafter extends StatefulWidget {
  const counterafter({Key? key}) : super(key: key);

  @override
  State<counterafter> createState() => _counterafterState();
}

class _counterafterState extends State<counterafter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      height: 30,
      width: 105,
      child: Row(
        children: [
          IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.minus,size: 15,)),
          Text('n'),
          IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.add,size: 15,)),

        ],
      ),
    );
  }
}
