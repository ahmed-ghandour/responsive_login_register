import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

Widget defaultButton ({
  Color background = const Color.fromRGBO(0, 93, 163, 1),
  required String text ,
  required VoidCallback function,
})=> Container(
    width: 30.w,
    height: 7.5.h,
    decoration: BoxDecoration(
      borderRadius : BorderRadius.circular(10.0),
      color: background,
    ),
    child: MaterialButton(
      onPressed: function,
      child :
      Text(
        text ,
        style:TextStyle( color: Colors.white, fontSize:12.sp),
      ),
    )
);

Widget defaultFormField (
    {
      required String label,
      TextEditingController? controller,
      TextInputType? type,
      IconData? suffix,
      bool isPasword = false,
    }
    )=> SizedBox(
      width: 80.w,
      height: 5.h,
      child: TextFormField(
      controller: controller ,
      keyboardType: type,
      obscureText: isPasword,
      decoration: InputDecoration(
        labelText: label,
        fillColor: const Color.fromRGBO(236,236,236,1),
        filled: true,
        border: const OutlineInputBorder(),
        suffixIcon: Icon(suffix),
      ),
    ));

void navigateTo(context,widget) => Navigator.push(context,
    MaterialPageRoute(builder: (context)=> widget));