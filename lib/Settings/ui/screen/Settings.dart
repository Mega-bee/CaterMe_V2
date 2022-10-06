// import 'package:caterme_v2/Settings/ui/Widget/SettingsList.dart';
// import 'package:caterme_v2/utils/style/colors.dart';
// import 'package:flutter/material.dart';
//
// import '../../model/SettingsModel.dart';
// import '../Widget/SettingsTopBar.dart';
//
// class Settings extends StatefulWidget {
//   const Settings({Key? key}) : super(key: key);
//
//   @override
//   State<Settings> createState() => _SettingsState();
// }
//
// class _SettingsState extends State<Settings> {
//   @override
//   Widget build(BuildContext context) {
//     var size =MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: Text("Settings"),
//         backgroundColor: PrimaryColor,
//         automaticallyImplyLeading: true,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 30, 20, 40),
//             child: Container(color: Colors.white, child: Center(child: SettingsTopBar())),
//           ),
//           Container(
//             color: Colors.white,
//             height: size.height*0.6,
//             child: ListView.separated(
//               shrinkWrap: true,
//                 itemBuilder: (context, index) => SettingsList(settingsListModel: SettingsListOfIcon[index]),
//                 separatorBuilder: (BuildContext context, int index) => const Divider(),
//                 itemCount: SettingsListOfIcon.length)
//           )
//         ],
//       ),
//     );
//   }
// }
