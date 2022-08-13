import 'package:flutter/material.dart';
import 'package:molefocs/model/reading_model.dart';

import '../../widgets/card_menuitem_reading.dart';

class ReadingHome extends StatefulWidget {
  const ReadingHome({Key? key}) : super(key: key);

  @override
  State<ReadingHome> createState() => _ReadingHomeState();
}

class _ReadingHomeState extends State<ReadingHome> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return SizedBox(
      height: tinggiAll * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: rdg.length,
        itemBuilder: (context, int key) {
          return ReadingMenuItemCard(index1: key);
        },
      ),
    );
  }
}
