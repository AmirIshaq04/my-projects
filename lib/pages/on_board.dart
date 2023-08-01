import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddelivery/pages/login_page.dart';
import 'package:fooddelivery/pages/on_board1.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: ScreenUtil().setWidth(350),
                height: ScreenUtil().setHeight(400),
                color: const Color.fromARGB(77, 202, 192, 192),
                child: Image.asset(
                  "assests/images/on_board.png",
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250.sp,
                  ),
                  const Text(
                    "It's easier to order online",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3.sp),
                  Text(
                    "Get it easy by ordering online",
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    "    for all the menus you want in our application,",
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    "no need to leave the house and stay safe.",
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, bottom: 50),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 15,
                        ),
                        backgroundColor: Colors.transparent,
                        onPrimary: Colors.black,
                        minimumSize: Size(20, 30),
                      ),
                      child: const Text("Skip"),
                    ),
                    const SizedBox(width: 150),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoard1()));
                      },
                      icon: const Icon(Icons.arrow_forward),
                      iconSize: 30.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
