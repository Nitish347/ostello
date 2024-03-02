import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget card() {
  return Container(
    padding: EdgeInsets.all(20.sp),
    height: 446.h,
    width: 328.w,
    decoration: BoxDecoration(color: Color(0xff7D23E0), borderRadius: BorderRadius.circular(20.r)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage("assets/images/hqaa1 1.png")),
        Container(
          // margin: EdgeInsets.only(top: 50.h),
          height: 150.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "No Guessing, Just Knowing:",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.sp, color: Colors.white),
              ),
              Text(
                "Your Career Path Awaits!",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.sp, color: Colors.white),
              ),
              Text(
                "Unlock your potential and get an instant report on customised career ",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Colors.white),
              ),
              Container(
                alignment: Alignment.center,
                height: 35.h,
                width: 280.w,
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
                child: Text(
                  "Start Assessment ",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
