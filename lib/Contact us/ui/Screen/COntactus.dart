import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Contac us',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
    );
  }
}
