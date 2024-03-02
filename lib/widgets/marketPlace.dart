import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/widgets/largecard.dart';

Widget MarletPlace() {
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
          "Marketplace",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp, color: Colors.black),
        ),
        Container(
          height: 200.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: SizedBox(
                      height: 200.h,
                      width: 250.w,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                picText("assets/images/verified (1) 1.png", "Verified Coaching"),
                                picText("assets/images/save-money.png", "Lowest Prices "),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                picText(
                                    "assets/images/free carrier check 1.png", "Free Career Check"),
                                picText("assets/images/line-chart 1.png", "Progress Tracking"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125.w,
                    top: 5.h,
                    child: Container(height: 190.h, width: 1.5, color: Color(0xff7D23E0)),
                  ),
                  Positioned(
                    left: 5.w,
                    top: 100.h,
                    child: Container(height: 1.5.h, width: 240.w, color: Color(0xff7D23E0)),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    child: SizedBox(
                      height: 200.h,
                      width: 250.w,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                picText("assets/images/verified (1) 1.png", "Verified Coaching"),
                                picText("assets/images/save-money.png", "Lowest Prices "),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                picText(
                                    "assets/images/free carrier check 1.png", "Free Career Check"),
                                picText("assets/images/line-chart 1.png", "Progress Tracking"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125.w,
                    top: 5.h,
                    child: Container(height: 190.h, width: 1.5, color: Color(0xff7D23E0)),
                  ),
                  Positioned(
                    left: 5.w,
                    top: 100.h,
                    child: Container(height: 1.5.h, width: 240.w, color: Color(0xff7D23E0)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 126.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              largeWidthCard(
                  "Refer & Earn",
                  "Invite a friend to ostello and earn ₹1000 worth coins.",
                  Colors.green,
                  "assets/images/Frame 427322671.png"),
              largeWidthCard(
                  "Refer & Earn",
                  "Invite a friend to ostello and earn ₹1000 worth coins.",
                  Colors.green,
                  "assets/images/Frame 427322671.png"),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget picText(String pic, String text) {
  return Container(
    width: 70.w,
    child: Column(
      children: [
        Image(image: AssetImage(pic)),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Colors.black),
        ),
      ],
    ),
  );
}
