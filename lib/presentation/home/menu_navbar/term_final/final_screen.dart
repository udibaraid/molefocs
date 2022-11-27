import 'package:flutter/material.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_final/final_question.dart';

import '../../../style/color.dart';
import 'final_hasil.dart';

class finalTermReview extends StatefulWidget {
  const finalTermReview({Key? key}) : super(key: key);

  @override
  _finalTermReviewState createState() => _finalTermReviewState();
}

class _finalTermReviewState extends State<finalTermReview> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "NEXT";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final tinggiLayar = MediaQuery.of(context).size.height;
    // final lebarLayar = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Final Term Review"),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "Lihat Hasil";
                });
              }
              setState(() {
                answered = false;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/10",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: tinggiLayar * 0.47,
                    child: Text(
                      "${questions[index].question}",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      height: tinggiLayar * 0.05,
                      margin: const EdgeInsets.only(
                          bottom: 3.0, left: 20.0, right: 20.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: btnPressed
                            ? questions[index].answers!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                            : AppColor.secondaryColor,
                        onPressed: !answered
                            ? () {
                                if (questions[index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score++;
                                  print("yes");
                                } else {
                                  print("no");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                              questions[index].answers!.keys.toList()[i],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'OpenSans Bold',
                                  color: Colors.white,
                                  fontSize: 10)),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HasilFinal(score)));
                      } else {
                        _controller!.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: const StadiumBorder(),
                    fillColor: Colors.blue,
                    padding: const EdgeInsets.all(5.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style: const TextStyle(
                          fontFamily: 'OpenSans Bold',
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  )
                ],
              );
            },
            itemCount: questions.length,
          )),
    );
  }
}
