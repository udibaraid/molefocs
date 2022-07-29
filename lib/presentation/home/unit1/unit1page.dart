import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:molefocs/presentation/widgets/header_widget.dart';

class Unit1Page extends StatefulWidget {
  const Unit1Page({Key? key}) : super(key: key);

  @override
  State<Unit1Page> createState() => _Unit1PageState();
}

class _Unit1PageState extends State<Unit1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[HeaderWidget()],
      ),
    );
  }
}
