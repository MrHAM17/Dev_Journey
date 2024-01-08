import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MycartItemWidget extends StatelessWidget {
  const MycartItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash8hqpxttomn0,
          height: 171.v,
          width: 142.h,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jacket",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 4.v),
            Text(
              "Black Jacket",
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 3.v),
            Text(
              "Size: XL",
              style: CustomTextStyles.bodyMediumGray500_1,
            ),
            SizedBox(height: 4.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "",
                    style: CustomTextStyles.titleMediumLime900SemiBold,
                  ),
                  TextSpan(
                    text: " 134.98",
                    style: CustomTextStyles.titleMediumSemiBold_2,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 23.v),
            SizedBox(
              width: 183.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 87.h,
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserWhiteA700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          child: Text(
                            "1",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
