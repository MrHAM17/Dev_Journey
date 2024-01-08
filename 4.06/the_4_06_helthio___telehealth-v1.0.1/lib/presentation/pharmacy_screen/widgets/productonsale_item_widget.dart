import '../controller/pharmacy_controller.dart';
import '../models/productonsale_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductonsaleItemWidget extends StatelessWidget {
  ProductonsaleItemWidget(
    this.productonsaleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductonsaleItemModel productonsaleItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      width: 118.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Obx(
            () => CustomImageView(
              imagePath: productonsaleItemModelObj.oBHCombi!.value,
              height: 68.v,
              width: 66.h,
              radius: BorderRadius.circular(
                34.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              productonsaleItemModelObj.oBHCombi1!.value,
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
          SizedBox(height: 7.v),
          Obx(
            () => Text(
              productonsaleItemModelObj.measurement!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            children: [
              Container(
                height: 17.v,
                width: 74.h,
                margin: EdgeInsets.only(bottom: 2.v),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 71.h,
                        margin: EdgeInsets.only(right: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                productonsaleItemModelObj.price!.value,
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.v),
                              child: Obx(
                                () => Text(
                                  productonsaleItemModelObj.price1!.value,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 1.v,
                        width: 29.h,
                        margin: EdgeInsets.only(bottom: 5.v),
                        decoration: BoxDecoration(
                          color: appTheme.gray600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Obx(
                  () => CustomIconButton(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      imagePath: productonsaleItemModelObj.close!.value,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
