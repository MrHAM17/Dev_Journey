import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FortyfiveItemWidget extends StatelessWidget {
  FortyfiveItemWidget({
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

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
            imagePath: ImageConstant.imgImage78,
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
                  "Jenny Wilson",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 9.v),
                Text(
                  "9,489 Followers",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 32.v,
            width: 73.h,
            text: "Follow",
            margin: EdgeInsets.symmetric(vertical: 24.v),
            buttonStyle: CustomButtonStyles.fillPrimaryTL16,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
          ),
        ],
      ),
    );
  }
}
