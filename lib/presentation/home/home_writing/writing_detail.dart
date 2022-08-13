import 'package:flutter/material.dart';
import 'package:molefocs/model/writing_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SpeakingDetail extends StatefulWidget {
  final int index1;
  const SpeakingDetail({Key? key, required this.index1}) : super(key: key);

  @override
  State<SpeakingDetail> createState() => _SpeakingDetailState();
}

class _SpeakingDetailState extends State<SpeakingDetail> {
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
