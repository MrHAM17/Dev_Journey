import '../models/searchresultsusers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SearchresultsusersItemWidget extends StatelessWidget {
  SearchresultsusersItemWidget(
    this.searchresultsusersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchresultsusersItemModel searchresultsusersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 235.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: searchresultsusersItemModelObj?.darcelBallentine,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 6.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      searchresultsusersItemModelObj.darcelBallentine1!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      searchresultsusersItemModelObj.price!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
