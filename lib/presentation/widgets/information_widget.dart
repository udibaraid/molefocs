import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            left: 18.0,
            right: 18.0,
          ),
          height: tinggiAll * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.amber),
        ),
        Positioned(
          bottom: 10,
          right: 20,
          child: ClipRRect(
            child: Image.asset("assets/images/home_bg.png",
                width: 340, fit: BoxFit.contain),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 30,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: const TextSpan(
                    text: "Fine a",
                    style: TextStyle(
                        fontFamily: "OpenSans Regular",
                        color: Colors.white,
                        fontSize: 16),
                    children: [
                  TextSpan(
                      text: " Molefocs \nLet's ",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenSans Bold",
                          fontSize: 16)),
                  TextSpan(
                      text: "study together",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenSans Reguler",
                          fontSize: 14))
                ])),
          ),
        )
      ],
    );
  }
}
