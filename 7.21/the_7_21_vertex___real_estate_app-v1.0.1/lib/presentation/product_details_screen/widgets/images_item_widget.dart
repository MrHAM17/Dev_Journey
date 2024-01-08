import 'package:flutter/material.dart';
import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class ImagesItemWidget extends StatelessWidget {
  const ImagesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: CustomImageView(
        imagePath: ImageConstant.img1,
        height: 130.v,
        width: 100.h,
      ),
    );
  }
}
