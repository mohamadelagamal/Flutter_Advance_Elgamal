import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/doc_name_and_name.dart';
import '../widget/doctor_image_and_text.dart';
import '../widget/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // use SafeArea to avoid the notch and the system bar
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 50.h),
                SizedBox(
                  height: 500.h, // Default height
                //  width: 900.w,  // Default width
                  child: const DoctorImageAndText(),
                ),
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: GetStartedButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}