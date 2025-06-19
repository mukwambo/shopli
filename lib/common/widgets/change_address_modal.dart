import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopli/common/widgets/reusable_text.dart';

import '../../const/constants.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import 'app_style.dart';

Future<dynamic> changeAddressBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: ScreenUtil().screenHeight,
        decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: BTexts.kCheckoutAddress,
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
            ReusableText(
                text: BTexts.kCheckoutAddressText,
                style: appStyle(13, BColors.kGray, FontWeight.w500)),
            SizedBox(
              height: 10.h,
            ),
            // TODO: Add address selection widget here
            // SizedBox(
            //   height: ScreenUtil().screenHeight*0.6,
            //   child: const CheckoutAddressSelection())
          ],
        ),
      );
    },
  );
}
