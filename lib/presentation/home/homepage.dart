import 'package:flutter/material.dart';
import 'package:molefocs/presentation/widgets/header_widget.dart';
import 'package:molefocs/presentation/widgets/information_widget.dart';
import 'package:molefocs/presentation/widgets/titleandsubtitle_widget.dart';

import '../widgets/cardmenu_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          const HeaderWidget(),
          const InformationWidget(),
          const TitleAndSubtitle(),
          SizedBox(
            height: tinggiAll * 0.48,
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: const <Widget>[CardMenuWidget()],
            ),
          )
        ],
      ),
    );
  }
}
