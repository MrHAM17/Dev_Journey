import '../models/postsaddsounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PostsaddsoundsItemWidget extends StatelessWidget {
  PostsaddsoundsItemWidget(
    this.postsaddsoundsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostsaddsoundsItemModel postsaddsoundsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80.adaptSize,
          width: 80.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: postsaddsoundsItemModelObj?.asItWas,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: IconButtonStyleHelper.radiusTL12,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: postsaddsoundsItemModelObj?.overflowMenu,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 5.v,
          ),
          child: Column(
            children: [
              Text(
                postsaddsoundsItemModelObj.asItWas1!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                postsaddsoundsItemModelObj.harryStyles!,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  postsaddsoundsItemModelObj.time!,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Text(
            postsaddsoundsItemModelObj.distance!,
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ),
        CustomImageView(
          imagePath: postsaddsoundsItemModelObj?.m,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 28.v,
            bottom: 28.v,
          ),
        ),
      ],
    );
  }
}
