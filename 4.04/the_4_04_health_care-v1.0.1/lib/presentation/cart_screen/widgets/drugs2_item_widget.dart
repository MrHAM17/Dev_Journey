import '../controller/cart_controller.dart';
import '../models/drugs2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Drugs2ItemWidget extends StatelessWidget {
  Drugs2ItemWidget(
    this.drugs2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Drugs2ItemModel drugs2ItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: drugs2ItemModelObj.oBHCombi!.value,
              height: 72.adaptSize,
              width: 72.adaptSize,
              radius: BorderRadius.circular(
                36.h,
              ),
              margin: EdgeInsets.only(
                left: 6.h,
                top: 2.v,
                bottom: 17.v,
              ),
            ),
          ),
          Spacer(
            flex: 56,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    drugs2ItemModelObj.oBHCombi1!.value,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    drugs2ItemModelObj.measurement!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 25.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent3,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          drugs2ItemModelObj.counter!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        bottom: 1.v,
                      ),
                      child: CustomIconButton(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFacebookPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 44,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray500,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 47.v),
                Obx(
                  () => Text(
                    drugs2ItemModelObj.price!.value,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
