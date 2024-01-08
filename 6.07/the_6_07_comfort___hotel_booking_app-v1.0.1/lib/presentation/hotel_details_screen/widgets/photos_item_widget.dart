import '../models/photos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class PhotosItemWidget extends StatelessWidget {
  PhotosItemWidget(
    this.photosItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PhotosItemModel photosItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: photosItemModelObj?.rectangle,
          height: 100.v,
          width: 140.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ),
    );
  }
}
