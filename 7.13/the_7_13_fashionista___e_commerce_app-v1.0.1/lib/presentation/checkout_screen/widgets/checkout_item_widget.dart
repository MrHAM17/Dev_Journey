import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  const CheckoutItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              decoration: AppDecoration.fillGray,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "Credit Card",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
