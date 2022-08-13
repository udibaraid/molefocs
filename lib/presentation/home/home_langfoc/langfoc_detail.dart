import 'package:flutter/material.dart';
import 'package:molefocs/model/langfoc_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class LangfocDetail extends StatefulWidget {
  final int index1;
  const LangfocDetail({Key? key, required this.index1}) : super(key: key);

  @override
  State<LangfocDetail> createState() => _LangfocDetailState();
}

class _LangfocDetailState extends State<LangfocDetail> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
            width: lebarAll,
            height: tinggiAll,
            child: SfPdfViewer.asset(lfc[widget.index1].desc)),
      ),
    );
  }
}
