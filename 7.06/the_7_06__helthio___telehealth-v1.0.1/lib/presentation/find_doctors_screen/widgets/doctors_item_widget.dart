import 'package:flutter/material.dart';
import 'package:the_7_06__helthio___telehealth/core/app_export.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  const DoctorsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse8864x64,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Text(
              "Dr. Marcus",
              style: CustomTextStyles.labelLargeErrorContainer,
            ),
          ),
        ],
      ),
    );
  }
}
