import '../models/fortyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FortyfiveItemWidget extends StatelessWidget {
  FortyfiveItemWidget(
    this.fortyfiveItemModelObj, {
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

  FortyfiveItemModel fortyfiveItemModelObj;

  VoidCallback? onTapArtist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapArtist!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: fortyfiveItemModelObj?.jennyWilson,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
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
                Text(
                  fortyfiveItemModelObj.artistName!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 9.v),
                Text(
                  fortyfiveItemModelObj.followersCounter!,
                  style: theme.textTheme.labelLarge,
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
      ),
    );
  }
}
