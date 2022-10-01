import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_10/component/show.dart';

class Question extends StatelessWidget {
  Question({
    required this.Question_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
  });

  String? Question_text;
  List? answer_1;
  List? answer_2;
  List? answer_3;
  List? answer_4;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          height: 245,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://us.123rf.com/450wm/radistmorze/radistmorze1906/radistmorze190600005/125521843-neon-sign-did-you-know-and-the-frame-on-the-brick-wall-background-.jpg?ver=6"))),
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "$Question_text",
              style: GoogleFonts.merriweather(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Show(val: answer_1![0], correct: answer_1![1], color: Colors.red),
        Show(val: answer_2![0], correct: answer_2![1], color: Colors.cyan),
        Show(val: answer_3![0], correct: answer_3![1], color: Colors.yellow),
        Show(val: answer_4![0], correct: answer_4![1], color: Colors.orange),
      ],
    );
  }
}
