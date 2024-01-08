import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame3ItemWidget extends StatelessWidget {
  Frame3ItemWidget({
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164.h,
      child: GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Column(
          children: [
            SizedBox(
              height: 235.v,
              width: 164.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashEmlkhdeydhg2,
                    height: 235.v,
                    width: 164.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      right: 12.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "Black Jacket",
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 5.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "",
                    style: CustomTextStyles.titleMediumLime900,
                  ),
                  TextSpan(
                    text: " 246.00",
                    style: CustomTextStyles.titleMediumSemiBold16,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
