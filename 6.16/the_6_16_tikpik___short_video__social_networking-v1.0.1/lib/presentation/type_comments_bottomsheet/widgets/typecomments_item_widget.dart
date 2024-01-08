import '../models/typecomments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TypecommentsItemWidget extends StatelessWidget {
  TypecommentsItemWidget(
    this.typecommentsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TypecommentsItemModel typecommentsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 136.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(2.h),
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsGray900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 136.v,
              width: 370.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 370.h,
                      margin: EdgeInsets.only(bottom: 34.v),
                      child: Text(
                        typecommentsItemModelObj.adipiscingElit!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray900.copyWith(
                          height: 1.40,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 14.v,
                                bottom: 13.v,
                              ),
                              child: Text(
                                typecommentsItemModelObj.kristinWatson!,
                                style: CustomTextStyles.titleMedium16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 64.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: typecommentsItemModelObj?.image,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                typecommentsItemModelObj.text!,
                                style: CustomTextStyles.labelLargeGray900,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 29.h,
                                top: 5.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                typecommentsItemModelObj.duration!,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 29.h,
                                top: 5.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                typecommentsItemModelObj.reply!,
                                style: CustomTextStyles.labelLargeGray700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
