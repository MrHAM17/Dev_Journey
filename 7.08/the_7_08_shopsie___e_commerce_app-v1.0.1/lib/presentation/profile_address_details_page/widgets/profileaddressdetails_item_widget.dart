import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfileaddressdetailsItemWidget extends StatelessWidget {
  const ProfileaddressdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home address",
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit21,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  "Edit",
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "Address 1",
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              Text(
                " Amoy st, 592",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "Address 2",
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              Text(
                " Amoy st, 592",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "City",
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              Text(
                "Los Angeles",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Postal code",
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              Text(
                "0000000",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
