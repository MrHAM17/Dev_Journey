import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Autolayoutvertical3ItemWidget extends StatelessWidget {
  const Autolayoutvertical3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.v,
              width: 122.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage25,
                    height: 200.v,
                    width: 122.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgOverflowmenuPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "837.5K",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200.v,
              width: 122.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage26,
                    height: 200.v,
                    width: 122.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgOverflowMenuPrimary16x16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "837.5K",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.v,
              width: 122.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage27,
                    height: 200.v,
                    width: 122.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgOverflowMenuPrimary16x16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "837.5K",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200.v,
              width: 122.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage28,
                    height: 200.v,
                    width: 122.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgOverflowMenuPrimary16x16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "837.5K",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
