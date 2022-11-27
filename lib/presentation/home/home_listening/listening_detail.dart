import 'package:flutter/material.dart';
import 'package:molefocs/model/listening_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../menu_navbar/menu_navbar.dart';

class ListeningDetail extends StatefulWidget {
  final int index1;
  const ListeningDetail({Key? key, required this.index1}) : super(key: key);

  @override
  State<ListeningDetail> createState() => _ListeningDetailState();
}

class _ListeningDetailState extends State<ListeningDetail> {
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
          centerTitle: true,
          title: const Text(
            'Listening',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "OpenSans Bold",
                color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () async {}, icon: const Icon(Icons.play_arrow)),
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
          height: tinggiAll * 0.9,
          child: SfPdfViewer.asset(lst[widget.index1].desc),
        ),
      ),
    );
  }
}
