import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../util/constant.dart';
import '../util/strings.dart';

class ThirdPageScreen extends StatefulWidget {

  @override
  _ThirdPageScreenState createState() => _ThirdPageScreenState();
}

class _ThirdPageScreenState extends State<ThirdPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          height: 100.0.h,
          child: Column(
            children: [
              widMainImg(),
              Expanded(
                  child: Column(
                children: [
                  SizedBox(
                    height: 1.5.h,
                  ),
                  widTitle(),
                  SizedBox(
                    height: 2.0.h,
                  ),
                  widDesc()
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  widMainImg() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
      child: Image.asset(Constant.IMG_3, height: 50.0.h),
    );
  }

  widTitle() {
    return Text(Strings.APP_NAME,
        style: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 30.0.sp, color: Colors.black),
        ));
  }

  widDesc() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Text(
          Strings.APP_DESC,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            textStyle:
            TextStyle(height: 1.3, fontSize: 13.0.sp, color: Colors.grey),
          ),
        ));
  }
}
