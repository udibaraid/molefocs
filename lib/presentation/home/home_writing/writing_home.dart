import 'package:flutter/material.dart';
import 'package:molefocs/model/writing_model.dart';

import '../../widgets/card_menuitem_writing.dart';

class WritingHome extends StatefulWidget {
  const WritingHome({Key? key}) : super(key: key);

  @override
  State<WritingHome> createState() => _WritingHomeState();
}

class _WritingHomeState extends State<WritingHome> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return SizedBox(
      height: tinggiAll * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: wrt.length,
        itemBuilder: (context, int key) {
          return WritingMenuItemCard(index1: key);
        },
      ),
    );
  }
}
