import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';

// ignore: must_be_immutable
class TransfertabcontainerItemWidget extends StatelessWidget {
  const TransfertabcontainerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: ImageConstant.imgEllipse309,
          height: 50.adaptSize,
          width: 50.adaptSize,
          radius: BorderRadius.circular(
            25.h,
          ),
          margin: EdgeInsets.symmetric(vertical: 15.v),
        ),
      ),
    );
  }
}
