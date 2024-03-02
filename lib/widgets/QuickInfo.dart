import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/widgets/largecard.dart';

Widget QuickInfo() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15.sp),
    // height: 240.h,
    width: 1.sw,
    // color: Colors.grey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Info.",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp, color: Colors.black),
        ),
        Center(
          child: Container(
            height: 295.h,
            width: 1.sw,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                card2(),
                card2(),
                card2(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget card2() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        height: 295.h,
        width: 250.w,
        color: Color(0xffF9F9F9),
        padding: EdgeInsets.all(15.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Career Trends",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.sp, color: Colors.black),
            ),
            Text(
              "Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Color(0xff5A5A5A)),
            ),
            Container(
              width: 1.sw,
              height: 35.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(width: 1.5, color: Color(0xff7D23E0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Explore Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 18.sp, color: Color(0xff7D23E0)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
