import 'package:flutter/material.dart';
import 'package:molefocs/model/listening_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
      home: Scaffold(
        body: SizedBox(
            width: lebarAll,
            height: tinggiAll,
            child: SfPdfViewer.asset(lst[widget.index1].desc)),
      ),
    );
  }
}
