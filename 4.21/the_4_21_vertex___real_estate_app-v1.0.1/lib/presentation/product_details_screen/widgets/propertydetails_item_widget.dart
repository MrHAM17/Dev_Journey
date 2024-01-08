import '../controller/product_details_controller.dart';
import '../models/propertydetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_4_21_vertex___real_estate_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PropertydetailsItemWidget extends StatelessWidget {
  PropertydetailsItemWidget(
    this.propertydetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PropertydetailsItemModel propertydetailsItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 94.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL5,
              child: CustomImageView(
                imagePath: propertydetailsItemModelObj.icon!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    propertydetailsItemModelObj.bathroom!.value,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      propertydetailsItemModelObj.roomsCounter!.value,
                      style: CustomTextStyles.labelLargePrimaryContainerBold,
                    ),
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
