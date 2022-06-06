import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home page.dart';

void main(){
  runApp(aba());
}
class aba extends StatelessWidget {
  const aba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: abaApp(),
    );
  }
}
