import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../model/writing_model.dart';

class WritingDetail extends StatefulWidget {
  final int index1;
  const WritingDetail({Key? key, required this.index1}) : super(key: key);

  @override
  State<WritingDetail> createState() => _WritingDetailState();
}

class _WritingDetailState extends State<WritingDetail> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
            width: lebarAll,
            height: tinggiAll,
            child: SfPdfViewer.asset(wrt[widget.index1].desc)),
      ),
    );
  }
}
