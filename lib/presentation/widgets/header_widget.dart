import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Container(
      height: tinggiAll * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Row(
                children: <Widget>[
                  Image.asset("assets/icons/logo.png"),
                  const Text(
                    "olefocs",
                    style: TextStyle(
                        fontFamily: "OpenSans Bold",
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
