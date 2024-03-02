import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

Widget appbar(double height, double width) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
    height: 45.h,
    width: 214.w,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hi Rajbir,",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.grey,
              ),
              Text(
                "Gandhinagar, Ahmedabad...",
                style: TextStyle(fontSize: 14.sp, color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ]),
  );
}

Widget trailingAppBar() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Stack(children: [
      Container(
        width: 150.w,
      ),
      Positioned(
        top: 21,
        left: 40,
        child: Container(
          padding: EdgeInsets.only(right: 20.w),
          height: 32,
          width: 100.w,
          decoration:
              BoxDecoration(color: Color(0xff7D23E0), borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage("assets/images/coin_2682893 1.png")),
              Text(
                "3500",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              Container()
            ],
          ),
        ),
      ),
      Positioned(
        top: 14,
        right: 0,
        child: Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(40.r), color: Colors.white),
            child: Center(
              child: CircleAvatar(
                radius: 30.r,
              ),
            ),
          )),
        ),
      )
    ]),
  );
}
