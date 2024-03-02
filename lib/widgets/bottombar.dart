import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/Home.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'appBar.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int selected = 0;
  var heart = false;

  List tabs = [Home(), Home()];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey,
          toolbarHeight: 80.h,
          elevation: 5,
          surfaceTintColor: Colors.white,
          leading: appbar(height, width),
          leadingWidth: 300.w,
          actions: [trailingAppBar()],
        ),
        extendBody: true,
        bottomNavigationBar: StylishBottomBar(
          items: [
            BottomBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: width * .1),
                  child: Icon(
                    CupertinoIcons.house,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
                selectedIcon: Padding(
                  padding: EdgeInsets.only(right: width * .1),
                  child: const Icon(
                    CupertinoIcons.house_fill,
                    size: 28,
                    color: Color(0xff7D23E0),
                  ),
                ),
                title: const Text('Home')),
            BottomBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: width * .1),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
                selectedIcon: Padding(
                  padding: EdgeInsets.only(right: width * .1),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 28,
                    color: Color(0xff7D23E0),
                  ),
                ),
                title: const Text('Home')),
          ],
          hasNotch: true,
          // fabLocation: StylishBarFabLocation.center,
          currentIndex: selected ?? 0,

          onTap: (index) {
            setState(() {
              print("nitish");
              selected = index;
              // widget.indx = index;
            });
            // controller.jumpToPage(selected);
          },
          option: AnimatedBarOptions(
            // iconSize: 32,
            // barAnimation: BarAnimation.liquid,
            iconStyle: IconStyle.simple,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Image.asset("assets/images/bot face 1.png", width: 35.h),
          onPressed: () {},
          backgroundColor: Colors.white,
          // Color(0xff204394),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: tabs[selected],
      ),
    );
  }
}
