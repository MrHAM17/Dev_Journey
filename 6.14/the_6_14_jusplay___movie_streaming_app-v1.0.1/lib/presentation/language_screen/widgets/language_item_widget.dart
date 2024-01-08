import '../models/language_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class LanguageItemWidget extends StatelessWidget {
  LanguageItemWidget(
    this.languageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguageItemModel languageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.whiteCardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: languageItemModelObj?.england,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 12.v,
              bottom: 9.v,
            ),
            child: Text(
              languageItemModelObj.england1!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: languageItemModelObj?.england2,
              height: 6.v,
              width: 9.h,
              alignment: Alignment.topRight,
            ),
          ),
        ],
      ),
    );
  }
}
