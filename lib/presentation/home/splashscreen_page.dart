import 'dart:async';
import 'package:flutter/material.dart';
import 'package:molefocs/presentation/style/color.dart';

import 'homepage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final lebarAll = MediaQuery.of(context).size.width;
    final tinggiAll = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: tinggiAll,
        width: lebarAll,
        color: AppColor.warnaBiru,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Molefocs",
              style: TextStyle(
                  fontFamily: 'OpenSans Bold',
                  color: Colors.white,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
