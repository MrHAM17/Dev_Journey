import '../controller/my_cart_controller.dart';
import '../models/mycart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MycartItemWidget extends StatelessWidget {
  MycartItemWidget(
    this.mycartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MycartItemModel mycartItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: mycartItemModelObj.jacket!.value,
            height: 171.v,
            width: 142.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                mycartItemModelObj.jacket1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                mycartItemModelObj.blackJacket!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 3.v),
            Obx(
              () => Text(
                mycartItemModelObj.sizeXL!.value,
                style: CustomTextStyles.bodyMediumGray500_1,
              ),
            ),
            SizedBox(height: 4.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.titleMediumLime900SemiBold,
                  ),
                  TextSpan(
                    text: "lbl_134_982".tr,
                    style: CustomTextStyles.titleMediumSemiBold_2,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 23.v),
            SizedBox(
              width: 183.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 87.h,
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserWhiteA700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          child: Obx(
                            () => Text(
                              mycartItemModelObj.one!.value,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
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
