import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/style/colors.dart';
import '../../Models/friend_model.dart';

class FriendCard extends StatelessWidget {

  Friend friend;


  FriendCard(this.friend);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle_outlined, color: Colors.grey, size: 30),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${friend.name}', style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
