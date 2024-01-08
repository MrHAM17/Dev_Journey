import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EditSuccessBottomsheet extends StatelessWidget {
  const EditSuccessBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 22.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 92.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder71,
            ),
            child: Container(
              height: 110.adaptSize,
              width: 110.adaptSize,
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder55,
              ),
              child: CustomIconButton(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(19.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL35,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkWhiteA70070x70,
                ),
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Container(
            width: 273.h,
            margin: EdgeInsets.symmetric(horizontal: 27.h),
            child: Text(
              "Your listing just \nsuccessfully updated 🎉",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "Lorem ipsum dolor sit amet, consectetur.",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 35.v),
          CustomElevatedButton(
            text: "Close",
          ),
        ],
      ),
    );
  }
}
