import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 97.v,
                          width: 87.h),
                      SizedBox(height: 39.v),
                      Container(
                          width: 279.h,
                          margin: EdgeInsets.only(left: 33.h, right: 31.h),
                          child: Text(
                              "Order Completed Successfully!\nThank your and see you soon",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray500
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 53.v),
                      CustomElevatedButton(
                          text: "My Order",
                          onPressed: () {
                            onTapMyOrder(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the trackingOrderScreen when the action is triggered.
  onTapMyOrder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trackingOrderScreen);
  }
}
