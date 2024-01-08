import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';

// ignore: must_be_immutable
class CountryorregionItemWidget extends StatelessWidget {
  CountryorregionItemWidget({
    Key? key,
    this.onTapCountrySelection,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCountrySelection;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCountrySelection!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder13,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgComponent2,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 2.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                top: 4.v,
              ),
              child: Text(
                "United Kingdom",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Spacer(),
            Container(
              height: 15.adaptSize,
              width: 15.adaptSize,
              margin: EdgeInsets.only(
                top: 7.v,
                right: 2.h,
                bottom: 6.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
                border: Border.all(
                  color: appTheme.black900,
                  width: 1.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
