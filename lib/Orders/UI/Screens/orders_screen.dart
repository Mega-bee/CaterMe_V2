import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/style/colors.dart';
import '../../Models/order_model.dart';
import '../Widgets/order_card.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Orders'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1,
                child: Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return OrderCard(orders[index]);
                    },
                    itemCount: orders.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
