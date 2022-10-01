import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Quiz"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://i.pinimg.com/474x/7d/54/99/7d5499a5d625c3f6a5efe482d7172c69--free-vector-graphics-vektor.jpg"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(actions: [
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Quiz();
                                }));
                              },
                              icon: Icon(Icons.people),
                              label: Text("Go to Quiz page",
                                  style: GoogleFonts.bungee(fontSize: 25))),
                        ],
                      )),
                    ]);
                  });
            },
            child: SizedBox(
              height: 100,
              width: 300,
              child: Text(
                  "Do you think you are good in flutter press me if yes:)",
                  style: GoogleFonts.bungee(fontSize: 35)),
            ),
          ),
        ),
      ),
    );
  }
}
