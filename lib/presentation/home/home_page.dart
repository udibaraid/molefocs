import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:molefocs/presentation/widgets/cardmenu_widget.dart';
import 'package:molefocs/presentation/widgets/header_widget.dart';
import 'package:molefocs/presentation/widgets/information_widget.dart';
import 'package:molefocs/presentation/widgets/listmenu_widget.dart';
import 'package:molefocs/presentation/widgets/titleandsubtitle_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: const <Widget>[
            SizedBox(
              height: 20,
            ),
            HeaderWidget(),
            InformationWidget(),
            TitleAndSubtitle(),
            ListMenuWidget()
          ],
        ));
  }
}
