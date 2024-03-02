import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget topServices() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15.sp),
    height: 300.h,
    width: 1.sw,
    // color: Colors.grey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Top Services",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp, color: Colors.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            smallCard("assets/images/Change color 2.png", "Career Trends"),
            smallCard("assets/images/Asset 7 1.png", "Scholarships"),
          ],
        ),
        largeCard("assets/images/image 1375.png", "Your Career Roadmap"),
      ],
    ),
  );
}

Widget smallCard(String img, String title) {
  return Container(
    height: 137.h,
    width: 157.w,
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Column(
        children: [
          Image.asset(img, height: 91.h),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.sp, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget largeCard(String img, String title) {
  return Container(
    height: 126.h,
    width: 1.sw,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.sp),
      ),
      elevation: 5,
      child: Row(
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.all(15.sp),
            width: 1.sw * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 14.sp, color: Colors.black),
                ),
                Text(
                  "Those who plan ahead hold the key to the future. Construct a.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12.sp, color: Color(0xff5A5A5A)),
                ),
                Container(
                  width: 123.73.w,
                  height: 29.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 1.5, color: Color(0xff7D23E0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Create Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 14.sp, color: Color(0xff7D23E0)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff7D23E0),
                        size: 15.sp,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(img, height: 91.h),
        ],
      ),
    ),
  );
}
