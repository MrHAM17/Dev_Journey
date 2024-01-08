import '../models/searchresultsvideos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class SearchresultsvideosItemWidget extends StatelessWidget {
  SearchresultsvideosItemWidget(
    this.searchresultsvideosItemModelObj, {
    Key? key,
    this.onTapRadioGroup,
  }) : super(
          key: key,
        );

  SearchresultsvideosItemModel searchresultsvideosItemModelObj;

  Function(String)? onTapRadioGroup;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300.v,
          width: 186.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: searchresultsvideosItemModelObj?.k,
                height: 300.v,
                width: 186.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 274.v, 125.h, 10.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: searchresultsvideosItemModelObj?.k1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                        ),
                        child: Text(
                          searchresultsvideosItemModelObj.k2!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        CustomRadioButton(
          text: "lbl_ariana_black".tr,
          value: "lbl_ariana_black".tr,
          groupValue: searchresultsvideosItemModelObj.radioGroup!,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          textStyle: CustomTextStyles.labelLargeGray900,
          onChange: (value) {
            onTapRadioGroup?.call(value);
          },
        ),
      ],
    );
  }
}
