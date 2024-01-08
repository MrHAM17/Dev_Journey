import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  const FifteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(15.h),
          decoration: IconButtonStyleHelper.fillGrayTL13,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 6.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apple Store",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 4.v),
              Text(
                "21 June, 2022",
                style: theme.textTheme.labelMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 15.v,
          ),
          child: Text(
            "-220.00",
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
