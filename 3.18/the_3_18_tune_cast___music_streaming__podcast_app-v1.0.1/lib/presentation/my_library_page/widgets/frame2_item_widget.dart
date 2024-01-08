import '../models/frame2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: frame2ItemModelObj?.theJordanHarb,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                frame2ItemModelObj.billSullivan!,
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
