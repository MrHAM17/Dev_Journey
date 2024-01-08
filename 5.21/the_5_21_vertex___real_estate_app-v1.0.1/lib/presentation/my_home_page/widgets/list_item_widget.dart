import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
    this.onTapProperty,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  VoidCallback? onTapProperty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProperty!.call();
      },
      child: Container(
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 109.v,
              width: 102.h,
              radius: BorderRadius.horizontal(
                left: Radius.circular(10.h),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
                bottom: 12.v,
              ),
              child: Column(
                children: [
                  Text(
                    listItemModelObj.primaryApartment!,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconBlueGray500,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          listItemModelObj.three!,
                          style: CustomTextStyles.titleSmallBluegray500Medium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconBlueGray50016x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          listItemModelObj.two!,
                          style: CustomTextStyles.titleSmallBluegray500Medium,
                        ),
                      ),
                      Container(
                        width: 67.h,
                        margin: EdgeInsets.only(left: 12.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(bottom: 3.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_1_880".tr,
                                      style: CustomTextStyles
                                          .titleSmallBluegray600Medium,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "lbl_ft".tr,
                                      style: CustomTextStyles
                                          .labelMediumBluegray600,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      listItemModelObj.price!,
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
