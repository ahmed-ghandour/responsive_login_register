import 'package:flutter/material.dart';
import 'package:magedsoft_task/home.dart';
import 'package:magedsoft_task/register.dart';
import 'package:sizer/sizer.dart';
import 'components.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType)
    {
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
                        height: 4.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: MaterialButton(
                          onPressed:(){},
                          color: Colors.white,
                          child:Text(
                            "عربى",
                            style: TextStyle(
                              color:  const Color.fromRGBO(0, 93, 163, 1),
                              fontSize: 12.sp
                            ),
                          ),
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
                height: 80.h,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    Column(
                      children:
                      [
                        SizedBox(
                          height: 20.h,),
                        defaultFormField(
                          label: 'Email',
                        ),
                        SizedBox(
                          height: 5.h,),
                        defaultFormField(
                          label: "Password",
                          isPasword: true,
                          type: TextInputType.visiblePassword,
                          suffix: Icons.visibility_off,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 27.h,),
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
                          width: 30.w,
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
              )
            ],
          ),
        ),
      );
    });
  }
}
