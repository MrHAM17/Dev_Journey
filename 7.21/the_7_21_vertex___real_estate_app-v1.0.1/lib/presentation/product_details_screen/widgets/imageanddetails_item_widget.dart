import 'package:flutter/material.dart';
import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_7_21_vertex___real_estate_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ImageanddetailsItemWidget extends StatelessWidget {
  const ImageanddetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 343.adaptSize,
        width: 343.adaptSize,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage343x343,
              height: 343.adaptSize,
              width: 343.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 24.v,
                  right: 24.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(14.h),
                          decoration: IconButtonStyleHelper.outlineBlue,
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowLeftPrimarycontainer40x40,
                          ),
                        ),
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlineBlue,
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgTelevisionPrimarycontainer,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 224.v),
                    Text(
                      "701 Ocean Avenue, Unit 103, Santa Monica",
                      style: CustomTextStyles.titleSmallGray300,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
