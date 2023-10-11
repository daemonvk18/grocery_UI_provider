import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo
              Container(
                height: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("assets/intro_image.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //some text stuff
              Center(
                child: Text(
                  "We delivery groceries at your doorstep",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              //button for get started
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Container(
                    alignment: Alignment.center,
                    height: 70.0,
                    width: 290.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF8CBD62),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
