import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/nickname_category_model.dart';

class CategoriesCard extends StatelessWidget {
  NickNameCategory nick;

  CategoriesCard(this.nick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 10,
        color: Colors.grey[200],
        child: Row(
          children: [
            Spacer(),
            Center(child: Text('${nick.category}')),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
