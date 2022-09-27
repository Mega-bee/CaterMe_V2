import 'dart:ui';
import 'package:flutter/cupertino.dart';

class OrderSummary {
  String title;
  String price;
  String image;

  OrderSummary({required this.title, required this.price, required this.image});
}

List<OrderSummary> orderSummary = [

  OrderSummary(
      title: 'Iftar Ramadan',
      price: '15',
      image: 'assets/iftar_ramadan.png'
  ),

  OrderSummary(
      title: 'Breakfast',
      price: '15',
      image: 'assets/.png'
  ),

  OrderSummary(
      title: 'Coffee with chocolate flavor',
      price: '15',
      image: 'assets/iftar_ramadan.png'
  ),

];