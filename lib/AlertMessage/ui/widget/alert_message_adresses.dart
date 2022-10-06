import 'package:flutter/material.dart';

import '../../../Addresses/Models/addresses_model.dart';
import '../../../utils/style/colors.dart';
class AlertMessageAdresses extends StatefulWidget {
  Address address;
  AlertMessageAdresses({Key? key,required this.address}) : super(key: key);

  @override
  State<AlertMessageAdresses> createState() => _AlertMessageAdressesState();
}

class _AlertMessageAdressesState extends State<AlertMessageAdresses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: InkWell(
          onTap: (){
            address.add(widget.address);
            print(address);
            Navigator.pop(context);
            setState(() {

            });
          },
          child: Row(
            children: [
              Icon(Icons.home_outlined, color: PrimaryColor, size: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      '${widget.address.name}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '${widget.address.details}',
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
              // IconButton(
              //   icon: Icon(Icons.edit, color: Colors.black),
              //   onPressed: (){
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => EditAddress()),
              //     );
              //   },
              // ),
              // TextButton(
              //   child: Text('Delete', style: TextStyle(color: Colors.red)),
              //   onPressed: (){},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
