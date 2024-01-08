import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TotalLikesDialog extends StatelessWidget {
  const TotalLikesDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "27M Total Likes",
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 17.v),
          Container(
            width: 267.h,
            margin: EdgeInsets.only(
              left: 3.h,
              right: 4.h,
            ),
            child: Text(
              "Jenny_wilson received a total of 27M likes from all videos.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 30.v),
          CustomElevatedButton(
            text: "Ok",
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16,
          ),
        ],
      ),
    );
  }
}
