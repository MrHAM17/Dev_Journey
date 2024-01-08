import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultssoundsItemWidget extends StatelessWidget {
  const SearchresultssoundsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage80x80,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Side to Side",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                "Ariana Grande",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 9.v),
              Text(
                "01:00",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Text(
            "938.6K",
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ),
      ],
    );
  }
}
