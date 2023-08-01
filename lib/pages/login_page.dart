import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddelivery/pages/recoverpassword.dart';
import 'package:fooddelivery/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 150.sp,
              height: 300.sp,
              child: Image.asset(
                "assests/images/login.png",
              ),
            ),
            Positioned(
              top: 70.sp,
              left: 20.sp,
              child: Text(
                "Hello,",
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 30, 25, 25),
                ),
              ),
            ),
            Positioned(
              top: 70.sp,
              left: 20.sp,
              child: Text(
                "\n Welcome Back !",
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(255, 30, 25, 25),
                ),
              ),
            ),
            Positioned(
              bottom: 390.sp,
              left: 20.sp,
              child: Text(
                " Email",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ),
            Center(
              child: Padding(
                // Adjusted padding for email TextField to move it up
                padding: EdgeInsets.fromLTRB(20.0, 0.sp, 20.0, 20.0),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    hintText: "Insert your text here",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 180.0),
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    hintText: "Type your password  here",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.sp, bottom: 180.sp),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecoveredPassword(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 10.0,
                      ),
                      primary:
                          Colors.transparent, // Set text color to transparent
                    ),
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // "Login" button moved outside the Column
            Positioned(
              bottom: 120.sp, // Adjust the position as needed
              left: 15.sp, // Adjust the position as needed
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 30.sp,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                        vertical: 20.sp), // Increased button height
                  ),
                  child: Text("Login"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
