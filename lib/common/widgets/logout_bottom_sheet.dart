import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopli/common/widgets/reusable_text.dart';
import '../../const/constants.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import 'app_style.dart';
import 'custom_button.dart';

Future<dynamic> logoutBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: BTexts.kLogout,
                    style: appStyle(16, BColors.kPrimary, FontWeight.w500))),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              color: BColors.kGrayLight,
              thickness: 0.5.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: BTexts.kLogoutText,
                    style: appStyle(14, BColors.kGray, FontWeight.w500))),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientBtn(
                    text: "Cancel",
                    borderColor: BColors.kDark,
                    btnColor: BColors.kWhite,
                    onTap: () => Navigator.pop(context),
                    btnHieght: 35.h,
                    radius: 16,
                    btnWidth: ScreenUtil().screenWidth / 2.2,
                  ),
                  GradientBtn(
                    text: "Yes, Logout",
                    onTap: () {
                      // Storage().removeKey('accessToken');
                      // context.read<TabIndexNotifier>().tabIndex = 0;
                      // context.go("/home");
                      // context.pop();
                    },
                    btnHieght: 35.h,
                    radius: 16,
                    btnWidth: ScreenUtil().screenWidth / 2.2,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}
