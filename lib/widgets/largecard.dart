import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget largeWidthCard(String title, String text, Color color, String img) {
  return Container(
    height: 126.h,
    width: 1.sw,
    child: Card(
      surfaceTintColor: Colors.white,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.sp),
      ),
      elevation: 5,
      child: Row(
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.all(15.sp),
            width: 160.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp, color: Colors.black),
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp, color: Colors.black),
                ),
              ],
            ),
          ),
          Image.asset(img, height: 91.h),
        ],
      ),
    ),
  );
}
