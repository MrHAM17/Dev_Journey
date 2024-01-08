import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage3,
          height: 236.v,
          width: 171.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: 153.h,
          child: Text(
            "Women Blue Skinny Fit High-Rise Light Fade ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          " 13.99",
          style: CustomTextStyles.titleSmallPrimarySemiBold,
        ),
      ],
    );
  }
}
