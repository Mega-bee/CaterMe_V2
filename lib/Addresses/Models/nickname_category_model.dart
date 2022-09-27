import 'package:flutter/material.dart';

class NickNameCategory {
  String category;
  Icon icon;

  NickNameCategory({required this.category, required this.icon});


}

List<NickNameCategory> categories = [

  NickNameCategory(category: 'Home', icon: Icon(Icons.home_outlined)),
  NickNameCategory(category: 'Work', icon: Icon(Icons.work)),
  NickNameCategory(category: 'Parents', icon: Icon(Icons.people_alt_outlined)),
  NickNameCategory(category: 'Custom', icon: Icon(Icons.square_outlined)),

];