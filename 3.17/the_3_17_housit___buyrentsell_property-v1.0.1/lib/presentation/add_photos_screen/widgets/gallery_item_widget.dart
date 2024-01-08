import '../models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget(
    this.galleryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalleryItemModel galleryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 161.v,
      width: 159.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: galleryItemModelObj?.shape,
            height: 161.v,
            width: 159.h,
            radius: BorderRadius.circular(
              25.h,
            ),
            alignment: Alignment.center,
          ),
          CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillRedATL15,
            alignment: Alignment.topRight,
            child: CustomImageView(
              imagePath: galleryItemModelObj?.iconClose,
            ),
          ),
        ],
      ),
    );
  }
}
