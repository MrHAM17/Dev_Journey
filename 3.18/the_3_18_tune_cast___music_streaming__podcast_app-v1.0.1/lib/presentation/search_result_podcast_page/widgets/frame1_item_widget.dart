import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
    this.onTapPodcastCard,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  VoidCallback? onTapPodcastCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: GestureDetector(
        onTap: () {
          onTapPodcastCard!.call();
        },
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: frame1ItemModelObj?.theJordanHarb,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                frame1ItemModelObj.billSullivan!,
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
