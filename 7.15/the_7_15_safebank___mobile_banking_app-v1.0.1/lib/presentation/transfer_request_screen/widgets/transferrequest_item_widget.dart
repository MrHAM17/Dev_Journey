import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransferrequestItemWidget extends StatelessWidget {
  const TransferrequestItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle63,
          height: 50.adaptSize,
          width: 50.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 5.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Zander Wiza",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "UI/UX Designer",
                style: theme.textTheme.labelMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 12.v,
          ),
          child: CustomIconButton(
            height: 25.adaptSize,
            width: 25.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillIndigoTL5,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
        ),
      ],
    );
  }
}
