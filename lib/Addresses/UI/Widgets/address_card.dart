import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/style/colors.dart';
import '../../Models/addresses_model.dart';
import '../Screens/edit_address.dart';

class AddressCard extends StatelessWidget {
  Address address;

  AddressCard(this.address);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Icon(Icons.home_outlined, color: PrimaryColor, size: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    '${address.name}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${address.details}',
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
                  MaterialPageRoute(builder: (context) => EditAddress()),
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
