import '../models/findfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FindfriendsItemWidget extends StatelessWidget {
  FindfriendsItemWidget(
    this.findfriendsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FindfriendsItemModel findfriendsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 264.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                height: 60.adaptSize,
                width: 60.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: IconButtonStyleHelper.fillDeepOrange,
                child: CustomImageView(
                  imagePath: findfriendsItemModelObj?.categoriesShare,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      findfriendsItemModelObj.inviteFriends!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      findfriendsItemModelObj.stayConnectedWith!,
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
          width: 68.h,
          text: "lbl_invite".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }
}
