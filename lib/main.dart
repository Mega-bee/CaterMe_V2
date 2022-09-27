import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/material.dart';

import 'Settings/ui/Screen/settings.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: BackgroundColor,
      ),
      home: Settings(),
    );
  }
}

