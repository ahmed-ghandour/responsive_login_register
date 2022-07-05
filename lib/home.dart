import 'package:flutter/material.dart';
import 'package:magedsoft_task/components.dart';
import 'package:magedsoft_task/login.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data"),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(0, 93, 163, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Name : Ahmed",
                style: TextStyle(
                  fontSize: 20.sp
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Email : ahmed@gmail.com",
                style: TextStyle(
                    fontSize: 20.sp
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Phone : 01152226320",
                style: TextStyle(
                    fontSize: 20.sp
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              defaultButton(
                  background: const Color.fromRGBO(173, 0, 47,1),
                  text: "Log Out",
                  function: ()
                  {
                    navigateTo(context, const LoginScreen());
                  }
                  )
            ],
          ),
        ),
      ),
    );
  }
}
