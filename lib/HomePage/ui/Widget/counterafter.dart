import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class counterafter extends StatefulWidget {
  const counterafter({Key? key}) : super(key: key);

  @override
  State<counterafter> createState() => _counterafterState();
}

class _counterafterState extends State<counterafter> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      height: 20,
      width: 105,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed:
          (){
            if (count==1){

            }else
            count--;
            setState(() {

            });
          }
              , icon:
              count==1?
              Icon(Icons.delete,size: 15,color: PrimaryColor,):
              Icon(FontAwesomeIcons.minus,size: 15,color: PrimaryColor,)),


          Text(count.toString()),
          IconButton(onPressed: (){

              count++;
            setState(() {

            });
          }, icon: Icon(FontAwesomeIcons.add,size: 15,color: PrimaryColor,)),

        ],
      ),
    );
  }
}
