import 'package:caterme_v2/AlertMessage/ui/widget/alert_message_adresses.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Addresses/Models/addresses_model.dart';
import '../../../Addresses/UI/Widgets/address_card.dart';

class CustomDeleteDialog extends StatefulWidget {
  const CustomDeleteDialog({super.key});


  @override
  State<CustomDeleteDialog> createState() => _CustomDeleteDialogState();
}

class _CustomDeleteDialogState extends State<CustomDeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        // title: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       child: Text(
        //         title,
        //         style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   ],
        // ),
        title: Text("Choose your address"),
        content: SizedBox(
          height: MediaQuery.of(context).size.height*0.4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            Container(height:MediaQuery.of(context).size.height*0.4,width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AlertMessageAdresses(address: addresses[index]
                      ,);
                  },
                  itemCount: addresses.length,
                ),
            ),
            ],
          ),
        ));
  }
}