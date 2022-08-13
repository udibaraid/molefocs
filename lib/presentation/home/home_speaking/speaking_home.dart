import 'package:flutter/material.dart';
import 'package:molefocs/model/speaking_model.dart';

import '../../widgets/card_menuitem_speaking.dart';

class SpeakingHome extends StatefulWidget {
  const SpeakingHome({Key? key}) : super(key: key);

  @override
  State<SpeakingHome> createState() => _SpeakingHomeState();
}

class _SpeakingHomeState extends State<SpeakingHome> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return SizedBox(
      height: tinggiAll * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: spk.length,
        itemBuilder: (context, int key) {
          return SpeakingMenuItemCard(index1: key);
        },
      ),
    );
  }
}
