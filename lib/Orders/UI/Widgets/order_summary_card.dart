import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/order_summary_model.dart';

class OrderSummaryCard extends StatelessWidget {
  final OrderSummary orderSummary;

  OrderSummaryCard(this.orderSummary);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('${orderSummary.image}'),
                width: 100,
                height: 70,
              ),
            ),
            Column(
              children: [
                Text(
                  '${orderSummary.title}',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,

                  ),
                ),
                Text(
                  '${orderSummary.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,

                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(1, 1),
                          )
                        ],
                    ),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.green),
                        onPressed: (){},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
