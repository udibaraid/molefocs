import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../menu_navbar.dart';

class userGuides extends StatefulWidget {
  const userGuides({super.key});

  @override
  State<userGuides> createState() => _userGuidesState();
}

class _userGuidesState extends State<userGuides> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text(
            'About Us',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "OpenSans Bold",
                color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.backspace))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
          ),
        ),
        body: SizedBox(
            width: lebarAll,
            height: tinggiAll,
            child: SfPdfViewer.asset("assets/pdf/about_molefocs.pdf")),
      ),
    );
  }
}
