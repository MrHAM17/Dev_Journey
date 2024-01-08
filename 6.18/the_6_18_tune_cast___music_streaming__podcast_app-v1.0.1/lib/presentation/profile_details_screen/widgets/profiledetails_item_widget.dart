import '../models/profiledetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfiledetailsItemWidget extends StatelessWidget {
  ProfiledetailsItemWidget(
    this.profiledetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfiledetailsItemModel profiledetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: profiledetailsItemModelObj?.image,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 162.h,
            child: Text(
              profiledetailsItemModelObj.positions!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMedium_1.copyWith(
                height: 1.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
