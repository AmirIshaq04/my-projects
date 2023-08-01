import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({Key? key}) : super(key: key);

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
                  "assests/images/on_board2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 300.sp),
                  Text(
                    "The best taste from us",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3.sp),
                  Text(
                    "We can guarantee that all of our menus",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "are made with the best recipes and tastes,",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "especially for you, our loyal customers!,",
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
                        textStyle: const TextStyle(
                          fontSize: 15.0,
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
                                builder: (context) => LoginPage()));
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
