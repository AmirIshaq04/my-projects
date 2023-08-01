import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fooddelivery/pages/on_board.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "KRFoods",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 204, 121, 38),
          toolbarHeight: 80.0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  AspectRatio(
                    aspectRatio: 9 / 15,
                    child: Image.asset(
                      "assests/images/burger.jpg",
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    child: Column(
                      children: [
                        Text(
                          "Let us make your day ",
                          style: GoogleFonts.openSans(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 121, 10, 10),
                          ),
                        ),
                        SizedBox(
                          height: 30.sp,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Press next to login/register',
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 12, 12, 13),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          totalRepeatCount: 1000,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnBoard(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  child: const Text("Next"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
