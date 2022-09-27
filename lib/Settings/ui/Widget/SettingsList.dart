import 'package:caterme_v2/Settings/model/SettingsModel.dart';
import 'package:flutter/material.dart';
class SettingsList extends StatelessWidget {
SettingsListModel settingsListModel;
SettingsList({Key? key,required this.settingsListModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        title: Text(settingsListModel.name),
        leading: Image.asset(settingsListModel.Image),
      ),
    );
  }
}
