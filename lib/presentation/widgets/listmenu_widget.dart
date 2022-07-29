import 'package:flutter/material.dart';
import 'package:molefocs/presentation/widgets/cardmenu_widget.dart';

import '../style/color.dart';

class ListMenuWidget extends StatelessWidget {
  const ListMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return SizedBox(
      height: tinggiAll * 0.49,
      child: ListView(
        children: const <Widget>[
          CardMenuWidget(),
          CardMenuWidget(),
          CardMenuWidget(),
          CardMenuWidget(),
          CardMenuWidget(),
          CardMenuWidget()
        ],
      ),
    );
  }
}
