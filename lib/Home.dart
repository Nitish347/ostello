import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/widgets/QuickInfo.dart';
import 'package:ostello/widgets/appBar.dart';
import 'package:ostello/widgets/firstCard.dart';
import 'package:ostello/widgets/largecard.dart';
import 'package:ostello/widgets/lastCard.dart';
import 'package:ostello/widgets/marketPlace.dart';
import 'package:ostello/widgets/topServices.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                card(),
                topServices(),
                largeWidthCard(
                    "Refer & Earn",
                    "Invite a friend to ostello and earn ₹1000 worth coins.",
                    Colors.white,
                    "assets/images/Color 1 (1).png"),
                MarletPlace(),
                QuickInfo(),
                lastCard(
                    "Guiding you through the maze of choices!",
                    "9k+ Students are using the platform to upgrade there career",
                    "assets/images/Saly-43.png"),
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ),
        ));
  }
}
