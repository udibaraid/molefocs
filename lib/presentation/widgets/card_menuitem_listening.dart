import 'package:flutter/material.dart';
import 'package:molefocs/model/listening_model.dart';

import '../home/home_listening/listening_detail.dart';

class ListeningMenuItemCard extends StatefulWidget {
  final int index1;

  const ListeningMenuItemCard({required this.index1});

  @override
  State<ListeningMenuItemCard> createState() => _ListeningMenuItemCardState();
}

class _ListeningMenuItemCardState extends State<ListeningMenuItemCard> {
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
                  builder: (context) =>
                      ListeningDetail(index1: widget.index1)));
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightGreenAccent, Colors.lightBlue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
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
                      lst[widget.index1].image,
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
                        "Listening",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "OpenSans Normal",
                        ),
                      ),
                      Text(
                        lst[widget.index1].name,
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