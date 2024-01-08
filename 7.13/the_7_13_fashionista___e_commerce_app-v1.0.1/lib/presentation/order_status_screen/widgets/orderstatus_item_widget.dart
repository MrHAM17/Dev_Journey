import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class OrderstatusItemWidget extends StatelessWidget {
  const OrderstatusItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 88.v,
          width: 8.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              bottom: 42.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Received",
                  style: CustomTextStyles.bodyLarge18,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCocoLineClock,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "05:48 PM, 7 June 2021",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
