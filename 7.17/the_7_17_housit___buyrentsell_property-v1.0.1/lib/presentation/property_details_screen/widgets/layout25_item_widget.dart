import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout25ItemWidget extends StatelessWidget {
  const Layout25ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 123.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 18.v,
                width: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                ),
                child: Text(
                  "2 Hospital",
                  style: CustomTextStyles.labelMediumBluegray600_1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
