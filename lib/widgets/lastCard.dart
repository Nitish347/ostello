import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget lastCard(String title, String text, String img) {
  return Container(
    // height: 220.h,
    width: 1.sw,
    child: Card(
      surfaceTintColor: Colors.white,
      color: Color(0xffF2F7FB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.sp),
      ),
      elevation: 5,
      child: Column(
        children: [
          Row(
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
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 30.sp, color: Color(0xff757575)),
                    ),
                  ],
                ),
              ),
              Image.asset(img, height: 130.h),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 26.h,
            width: 1.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.r), bottomLeft: Radius.circular(20.r)),
              color: Color(0xffD2EBFF),
            ),
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 10.sp, color: Color(0xff757575)),
            ),
          ),
        ],
      ),
    ),
  );
}
