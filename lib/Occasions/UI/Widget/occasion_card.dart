import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/style/colors.dart';
import '../../Models/occasion_model.dart';
import '../Screen/occasion_details_screen.dart';

class OccasionCard extends StatelessWidget {
  Occasion occasion;

  OccasionCard(this.occasion);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Icon(Icons.calendar_month, color: PrimaryColor, size: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    '${occasion.name}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${occasion.details}',
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.black),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OccasionDetails()),
                );
              },
            ),
            TextButton(
              child: Text('Delete', style: TextStyle(color: Colors.red)),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
