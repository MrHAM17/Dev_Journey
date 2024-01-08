import 'package:flutter/material.dart';
import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class HomesearchItemWidget extends StatelessWidget {
  HomesearchItemWidget({
    Key? key,
    this.onTapSearch,
  }) : super(
          key: key,
        );

  VoidCallback? onTapSearch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSearch!.call();
      },
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImg40x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mighty Cinco Family",
                    style: CustomTextStyles.titleSmallBold,
                  ),
                  SizedBox(height: 1.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "360",
                          style: CustomTextStyles.labelLargePrimaryBold,
                        ),
                        TextSpan(
                          text: " S",
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "tillwater Rd Troutman",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
