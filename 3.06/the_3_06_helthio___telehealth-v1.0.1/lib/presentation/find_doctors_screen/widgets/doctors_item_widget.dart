import '../models/doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_06_helthio___telehealth/core/app_export.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget(
    this.doctorsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DoctorsItemModel doctorsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: doctorsItemModelObj?.drMarcus,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Text(
              doctorsItemModelObj.drMarcus1!,
              style: CustomTextStyles.labelLargeErrorContainer,
            ),
          ),
        ],
      ),
    );
  }
}