import '../models/risingstars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class RisingstarsItemWidget extends StatelessWidget {
  RisingstarsItemWidget(
    this.risingstarsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RisingstarsItemModel risingstarsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: risingstarsItemModelObj?.rochelFoose,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                risingstarsItemModelObj.rochelFoose1!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                risingstarsItemModelObj.distance!,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 73.h,
          text: "lbl_follow".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }
}
