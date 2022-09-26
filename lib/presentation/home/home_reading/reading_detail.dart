import 'package:flutter/material.dart';
import 'package:molefocs/model/reading_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadingDetail extends StatefulWidget {
  final int index1;
  const ReadingDetail({Key? key, required this.index1}) : super(key: key);

  @override
  State<ReadingDetail> createState() => _ReadingDetailState();
}

class _ReadingDetailState extends State<ReadingDetail> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
            width: lebarAll,
            height: tinggiAll,
            child: SfPdfViewer.asset(rdg[widget.index1].desc)),
      ),
    );
  }
}
