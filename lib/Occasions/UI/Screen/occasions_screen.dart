import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/style/colors.dart';
import '../../Models/occasion_model.dart';
import '../Widget/occasion_card.dart';


class OccasionsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('Occasions'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline, color: Colors.white))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return OccasionCard(occasions[index]);
                    },
                    itemCount: occasions.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
