import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class Profilelist1ItemWidget extends StatelessWidget {
  const Profilelist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse11,
        height: 60.adaptSize,
        width: 60.adaptSize,
        radius: BorderRadius.circular(
          30.h,
        ),
      ),
    );
  }
}
