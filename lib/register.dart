import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components.dart';
import 'home.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(0, 93, 163, 1) ,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
          [
            Stack(
                children:
                [
                  Container(
                    height: 25.h,
                  ),
                  Positioned(
                    top: 50,
                    right: 15,
                    child: Container(
                      height: 3.h,
                      width: 8.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    right: 30.w,
                    left: 30.w,
                    child: Image(
                      image: const AssetImage("assets/images/logo.png"),
                      width: 15.w,
                      height: 15.h,
                    ),
                  ),
                ]
            ),
            Container(
              width: double.infinity,
              height: 80.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  )
              ),
                child: Column(
                  children:
                  [
                    SizedBox(
                      height:10.h ,),
                    defaultFormField(label: "Full Name",),
                    SizedBox(
                      height:5.h ,),
                    defaultFormField(label: "Email", ),
                    SizedBox(
                      height:5.h ,),
                    defaultFormField(label: "Phone", ),
                    SizedBox(
                      height:5.h ,),
                    defaultFormField(
                        label: "Password",
                        suffix: Icons.visibility_off,
                        type: TextInputType.visiblePassword,
                        isPasword: true
                    ),
                    SizedBox(
                      height:5.h ,),
                    defaultFormField(
                        label: "Confirm Password",
                        suffix: Icons.visibility_off,
                        type: TextInputType.visiblePassword,
                        isPasword: true
                    ),
                    SizedBox(
                      height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        defaultButton(
                            function: ()
                            {
                              navigateTo(context, const RegisterScreen());
                            },
                            text: "Register"
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        defaultButton(
                            text: "Login",
                            function: ()
                            {
                              navigateTo(context, const HomeScreen());
                            }
                        )
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}