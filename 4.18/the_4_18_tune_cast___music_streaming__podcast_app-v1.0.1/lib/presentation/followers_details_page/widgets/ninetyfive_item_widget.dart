import '../controller/followers_details_controller.dart';
import '../models/ninetyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class NinetyfiveItemWidget extends StatelessWidget {
  NinetyfiveItemWidget(
    this.ninetyfiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetyfiveItemModel ninetyfiveItemModelObj;

  var controller = Get.find<FollowersDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: ninetyfiveItemModelObj.jennyWilson!.value,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  ninetyfiveItemModelObj.artistName!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  ninetyfiveItemModelObj.followersCounter!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 73.h,
          text: "lbl_follow".tr,
          margin: EdgeInsets.symmetric(vertical: 24.v),
          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
        ),
      ],
    );
  }
}
