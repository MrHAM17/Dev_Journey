import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class PriceItemWidget extends StatelessWidget {
  const PriceItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage56x56,
          height: 56.adaptSize,
          width: 56.adaptSize,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "43.90",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 8.v),
              Text(
                "Cotton black dress",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
