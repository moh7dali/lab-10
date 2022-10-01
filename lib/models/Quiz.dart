import 'package:flutter/material.dart';
import 'package:lab_10/component/edited_question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Icon(Icons.question_answer, size: 35),
              Icon(Icons.question_answer, size: 35),
              Icon(Icons.question_answer, size: 35),
              Icon(Icons.question_answer, size: 35),
              Icon(Icons.question_answer, size: 35),
              Icon(Icons.question_answer, size: 35)
            ]),
            title: Text("Quiz App"),
          ),
          body: TabBarView(children: [
            Question(
                answer_1: ["Samsung", 0],
                answer_2: ["Facebook", 0],
                answer_3: ["Google", 1],
                answer_4: ["Microsoft", 0],
                Question_text: "Who created Flutter?"),
            Question(
                answer_1: ["Dart", 1],
                answer_2: ["Pyton", 0],
                answer_3: ["C++", 0],
                answer_4: ["Java", 0],
                Question_text:
                    "Which programming language is used     by Flutter?"),
            Question(
                answer_1: ["Programming Language", 0],
                answer_2: ["SDK", 1],
                answer_3: ["Both", 0],
                answer_4: ["None of the above", 0],
                Question_text: "Flutter is a?"),
            Question(
                answer_1: ["Cross-platform Development", 0],
                answer_2: ["Faster Development", 0],
                answer_3: ["UI Focused", 0],
                answer_4: ["All of the above", 1],
                Question_text: "What are the advantages of Flutter?"),
            Question(
                answer_1: ["Text", 0],
                answer_2: ["Image", 0],
                answer_3: ["Expanded", 0],
                answer_4: ["Column", 1],
                Question_text:
                    "Which of the following widgets use for layout ?"),
            Question(
                answer_1: ["Column", 0],
                answer_2: ["Row", 0],
                answer_3: ["Stack", 0],
                answer_4: ["List view", 1],
                Question_text:
                    "Which one Don't need Single Child scroll view ?"),
          ]),
        ));
  }
}
