import 'package:flutter/material.dart';

class TitleListening extends StatelessWidget {
  const TitleListening({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20.0, bottom: 10.0),
          child: SizedBox(
            height: tinggiAll * 0.09,
            child: Row(
              children: [
                Image.asset("assets/images/icons_listening.png"),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Listening",
                      style: TextStyle(
                          fontFamily: "OpenSans Bold",
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "Listening material with molefocs",
                      style: TextStyle(
                          fontFamily: "OpenSans Reguler",
                          color: Colors.black54,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
