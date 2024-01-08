import '../models/propertydetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_5_21_vertex___real_estate_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PropertydetailsItemWidget extends StatelessWidget {
  PropertydetailsItemWidget(
    this.propertydetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PropertydetailsItemModel propertydetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 94.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL5,
            child: CustomImageView(
              imagePath: propertydetailsItemModelObj?.icon,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  propertydetailsItemModelObj.bathroom!,
                  style: CustomTextStyles.bodySmall10,
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    propertydetailsItemModelObj.roomsCounter!,
                    style: CustomTextStyles.labelLargePrimaryContainerBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
