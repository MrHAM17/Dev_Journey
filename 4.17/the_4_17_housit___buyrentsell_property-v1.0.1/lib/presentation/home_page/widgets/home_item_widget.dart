import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
    this.onTapEstatesCardVertical,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapEstatesCardVertical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstatesCardVertical!.call();
      },
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160.v,
              width: 144.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: homeItemModelObj.wingsTower!.value,
                      height: 160.v,
                      width: 144.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Obx(
                            () => CustomIconButton(
                              height: 25.adaptSize,
                              width: 25.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillRedA,
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                imagePath: homeItemModelObj.favorite!.value,
                              ),
                            ),
                          ),
                          SizedBox(height: 91.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: CustomIconButton(
                                  height: 25.adaptSize,
                                  width: 25.adaptSize,
                                  padding: EdgeInsets.all(5.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlueGrayAf,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 6.v,
                                ),
                                decoration:
                                    AppDecoration.fillBlueGrayAf.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Obx(
                                      () => Text(
                                        homeItemModelObj.price!.value,
                                        style:
                                            CustomTextStyles.labelLargeGray100,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      child: Obx(
                                        () => Text(
                                          homeItemModelObj.month!.value,
                                          style: CustomTextStyles
                                              .labelSmallGray100,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  homeItemModelObj.wingsTower1!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 22.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath: homeItemModelObj.image!.value,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Obx(
                            () => Text(
                              homeItemModelObj.text!.value,
                              style: CustomTextStyles.labelSmallBold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: homeItemModelObj.jakartaIndonesia!.value,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Obx(
                      () => Text(
                        homeItemModelObj.jakartaIndonesia1!.value,
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
          ],
        ),
      ),
    );
  }
}
