import 'package:caterme_v2/utils/Images/Images.dart';

class SettingsListModel{
  String Image;
  String name;
  SettingsListModel({required this.name,required this.Image});
}
List <SettingsListModel> SettingsListOfIcon=[
  SettingsListModel(name: "Profile", Image: ImageAsset.PROFILE),
  SettingsListModel(name: "Addresses", Image: ImageAsset.ADDRESSES),
  SettingsListModel(name: "Friends", Image: ImageAsset.FRIENDS),
  SettingsListModel(name: "Payment Method", Image: ImageAsset.PAYMENT),
  SettingsListModel(name: "Language", Image: ImageAsset.LANG),
  SettingsListModel(name: "Mode", Image: ImageAsset.MODE),
  SettingsListModel(name: "Terms", Image: ImageAsset.TERMS),
  SettingsListModel(name: "Contact us", Image: ImageAsset.CONTACTUS),
];