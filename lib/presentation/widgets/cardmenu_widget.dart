import 'dart:developer';

import 'package:flutter/material.dart';

class CardMenuWidget extends StatelessWidget {
  const CardMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Container(
        height: tinggiAll * 0.15,
        margin: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: GestureDetector(
          onTap: () {},
          child: Card(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.00)),
                gradient: LinearGradient(
                    colors: [Colors.yellowAccent, Colors.redAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
              ),
              child: AspectRatio(
                aspectRatio: 3 / 1,
                child: Row(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          "assets/images/home_image1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 5 / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Unit 1",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "OpenSans Normal",
                            ),
                          ),
                          Text(
                            "Introduce Yourself to Digital World!",
                            style: TextStyle(
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
        ));
  }
}
