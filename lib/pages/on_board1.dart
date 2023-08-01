import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/login_page.dart';
import 'package:fooddelivery/pages/on_board2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoard1 extends StatelessWidget {
  const OnBoard1({Key? key}) : super(key: key);

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
                  "assests/images/on_board1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 250.sp),
                  const Text(
                    "Get a variety of menus",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3.sp),
                  Text(
                    "Various menus that you want are available",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    " on our application, no need to move to a ",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    " different store, we have it all!",
                    style: TextStyle(
                      fontSize: 14.0,
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
                        textStyle: TextStyle(
                          fontSize: 15.0,
                        ),
                        backgroundColor: Colors.transparent,
                        onPrimary: Colors.black,
                        minimumSize: const Size(20, 30),
                      ),
                      child: const Text("Skip"),
                    ),
                    const SizedBox(width: 150),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoard2()));
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
