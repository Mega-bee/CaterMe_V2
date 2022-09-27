import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/style/colors.dart';
import '../../Models/friend_model.dart';
import '../Widgets/friend_card.dart';

class FriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){},
        ),
        title: Text('Friends'),
        actions: [
          IconButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          width: 300,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              suffixIcon: Icon(Icons.contact_mail, size: 20, color: PrimaryColor),
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(color: Colors.white, width: 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),)
                      ),
                      Container(
                          width: 300,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                              suffixIcon: Icon(Icons.phone_android, size: 20, color: PrimaryColor),
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(color: Colors.white, width: 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),)
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 14, top: 50),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(240, 45),
                              maximumSize: const Size(240, 50),
                              primary: PrimaryColor,
                            ),
                            onPressed: (){}, child: Text('Add'),
                          )
                      ),
                    ],
                  );
                });

          }, icon: Icon(Icons.add_circle_outline, color: Colors.white))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return FriendCard(friends[index]);
                    },
                    itemCount: friends.length,
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
