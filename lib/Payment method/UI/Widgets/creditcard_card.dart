import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/Images/Images.dart';
import '../../Models/payment_method_model.dart';

class CreditcardCard extends StatelessWidget {

  CreditCard creditCard;

  CreditcardCard(this.creditCard);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.09,
      color: Colors.grey[100],
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(ImageAsset.logo),
              width: 50,
              height: 50
            ),
          ),
          SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${'${creditCard.cardNumber.toString().replaceAll(RegExp(r"."), "*")}'}'
            ),
          ),
          SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${creditCard.securityCode}'),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Delete', style: TextStyle(color: Colors.red)),
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(side: BorderSide(color: Colors.red)),
                backgroundColor: Colors.grey[100],

              ),
            )
          )
        ],
      ),
    );
  }
}
