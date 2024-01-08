import '../models/profileaddressdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfileaddressdetailsItemWidget extends StatelessWidget {
  ProfileaddressdetailsItemWidget(
    this.profileaddressdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileaddressdetailsItemModel profileaddressdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                profileaddressdetailsItemModelObj.homeAddress!,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit21,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  profileaddressdetailsItemModelObj.edit!,
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  profileaddressdetailsItemModelObj.addressCounter!,
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              Text(
                profileaddressdetailsItemModelObj.amoySt!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  profileaddressdetailsItemModelObj.addressCounter1!,
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              Text(
                profileaddressdetailsItemModelObj.amoySt1!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileaddressdetailsItemModelObj.city!,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              Text(
                profileaddressdetailsItemModelObj.losAngeles!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileaddressdetailsItemModelObj.postalCode!,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              Text(
                profileaddressdetailsItemModelObj.zero!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
