import '../models/speciallization_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';

// ignore: must_be_immutable
class SpeciallizationItemWidget extends StatelessWidget {
  SpeciallizationItemWidget(
    this.speciallizationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SpeciallizationItemModel speciallizationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: speciallizationItemModelObj?.designCreative,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
            ),
            child: Text(
              speciallizationItemModelObj.designCreative1!,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
