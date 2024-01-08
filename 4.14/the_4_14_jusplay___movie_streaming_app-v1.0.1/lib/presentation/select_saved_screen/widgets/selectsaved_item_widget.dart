import '../controller/select_saved_controller.dart';
import '../models/selectsaved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SelectsavedItemWidget extends StatelessWidget {
  SelectsavedItemWidget(
    this.selectsavedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectsavedItemModel selectsavedItemModelObj;

  var controller = Get.find<SelectSavedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: selectsavedItemModelObj.image!.value,
              height: 112.adaptSize,
              width: 112.adaptSize,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 146.h,
                  child: Obx(
                    () => Text(
                      selectsavedItemModelObj.theIceAgeAdventures!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    selectsavedItemModelObj.actionAdventure!.value,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                ),
                SizedBox(height: 22.v),
                CustomElevatedButton(
                  height: 30.v,
                  width: 120.h,
                  text: "lbl_watch_now".tr,
                  buttonTextStyle: theme.textTheme.bodySmall!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
