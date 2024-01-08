import '../controller/profile_details_one_controller.dart';
import '../models/profiledetailsone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfiledetailsoneItemWidget extends StatelessWidget {
  ProfiledetailsoneItemWidget(
    this.profiledetailsoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfiledetailsoneItemModel profiledetailsoneItemModelObj;

  var controller = Get.find<ProfileDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: profiledetailsoneItemModelObj.image!.value,
              height: 184.adaptSize,
              width: 184.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 162.h,
            child: Obx(
              () => Text(
                profiledetailsoneItemModelObj.positions!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMedium_1.copyWith(
                  height: 1.40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
