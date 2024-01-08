import '../models/data_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class DataItemWidget extends StatelessWidget {
  DataItemWidget(
    this.dataItemModelObj, {
    Key? key,
    this.onTapEstatesCardLocation,
  }) : super(
          key: key,
        );

  DataItemModel dataItemModelObj;

  VoidCallback? onTapEstatesCardLocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstatesCardLocation!.call();
      },
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 174.v,
              width: 144.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: dataItemModelObj?.bali,
                    height: 174.v,
                    width: 144.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomElevatedButton(
                    height: 25.v,
                    width: 22.h,
                    text: "lbl_1".tr,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 10.v,
                    ),
                    buttonStyle: CustomButtonStyles.fillOrange,
                    buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                dataItemModelObj.bali1!,
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
