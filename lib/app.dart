import 'package:component_widgets/screen/dialog_1.dart';
import 'package:flutter/material.dart';

import 'screen/snack_bar_practice.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dialog1(),
    );
  }
}
