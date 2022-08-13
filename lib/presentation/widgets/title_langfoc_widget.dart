import 'package:flutter/material.dart';

class TitleLangfoc extends StatelessWidget {
  const TitleLangfoc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20.0),
          child: SizedBox(
            height: tinggiAll * 0.09,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Languange Fokus",
                  style: TextStyle(
                      fontFamily: "OpenSans Bold",
                      color: Colors.black,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Languange Fokus material with molefocs",
                  style: TextStyle(
                      fontFamily: "OpenSans Reguler",
                      color: Colors.black54,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
