import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Show extends StatelessWidget {
  Show({this.val, this.correct, this.color});
  String? val;
  int? correct;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (correct == 1) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Container(
                        child: Image.network(
                            'https://www.katieroberts.com.au/career-advice-blog/wp-content/uploads/2017/06/7-ways-you-know-youre-doing-a-great-job.jpg'),
                      )
                    ],
                  );
                });
          } else {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Container(
                        child: Image.network(
                            'https://studio.code.org/v3/assets/GSqGr3-anjBoAj1o0lZbWHtyvGsfUJWbjIeOphAoG74/loudly_crying_face_256_1.gif'),
                      )
                    ],
                  );
                });
          }
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          color: color,
          child: Text(
            "${val}",
            style: GoogleFonts.bungee(fontSize: 18),
          ),
        ));
  }
}
