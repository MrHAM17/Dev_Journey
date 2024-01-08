import 'package:flutter/material.dart' hide SearchController;
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Frame7ItemWidget extends StatelessWidget {
  const Frame7ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashJj0tls2rod4,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Premium Watch",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 12.v),
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 5,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 21.v),
          ),
        ],
      ),
    );
  }
}
