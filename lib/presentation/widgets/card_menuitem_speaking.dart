import 'package:flutter/material.dart';
import 'package:molefocs/model/speaking_model.dart';

import '../home/home_speaking/speaking_detail.dart';

class SpeakingMenuItemCard extends StatefulWidget {
  final int index1;

  const SpeakingMenuItemCard({required this.index1});

  @override
  State<SpeakingMenuItemCard> createState() => _SpeakingMenuItemCardState();
}

class _SpeakingMenuItemCardState extends State<SpeakingMenuItemCard> {
  @override
  Widget build(BuildContext context) {
    final lebarAll = MediaQuery.of(context).size.width;
    return Container(
      width: lebarAll * 0.7,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SpeakingDetail(index1: widget.index1)));
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.lightGreenAccent,
              Color.fromARGB(255, 150, 29, 187)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: AspectRatio(
            aspectRatio: 3 / 1,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      spk[widget.index1].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                AspectRatio(
                  aspectRatio: 3 / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Speaking",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "OpenSans Normal",
                        ),
                      ),
                      Text(
                        spk[widget.index1].name,
                        style: const TextStyle(
                          fontFamily: "OpenSans Bold",
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
