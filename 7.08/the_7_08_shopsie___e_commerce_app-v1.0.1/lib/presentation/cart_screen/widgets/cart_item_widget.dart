import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage110x109,
          height: 110.v,
          width: 109.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 233.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "12.50",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "shorts in Yellow",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTrash2,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 34.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Qty:",
                          style: CustomTextStyles.bodyMediumGray600,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusSquare,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "1",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusSquarePrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
