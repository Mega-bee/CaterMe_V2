import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Models/payment_method_model.dart';
import '../Widgets/creditcard_card.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Payment methods'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.white),
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                    'Add Credit/Debit Card',
                                    style: TextStyle(fontWeight: FontWeight.bold
                                    ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                height: 70,
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Card Number',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.black12, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey, width: 2),
                                    ),
                                  ),)
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Expiry', style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 100,
                                    height: 70,
                                    padding: EdgeInsets.all(10.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'MM',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.grey, width: 2),
                                        ),
                                      ),)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 100,
                                    height: 70,
                                    padding: EdgeInsets.all(10.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'YY',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.grey, width: 2),
                                        ),
                                      ),)
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                height: 70,
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Security Code',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.black12, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey, width: 2),
                                    ),
                                  ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                height: 70,
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.black12, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey, width: 2),
                                    ),
                                  ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                height: 70,
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.black12, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey, width: 2),
                                    ),
                                  ),)
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 45),
                                  maximumSize: const Size(double.infinity, 50),
                                  primary: PrimaryColor,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: (){}, child: Text('Add Card'),
                              )
                          ),
                        ],
                      ),
                    );
                  });
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CreditcardCard(creditCards[index]);
              },
              itemCount: creditCards.length,
            ),
          ],
        ),
      ),
    );
  }
}
