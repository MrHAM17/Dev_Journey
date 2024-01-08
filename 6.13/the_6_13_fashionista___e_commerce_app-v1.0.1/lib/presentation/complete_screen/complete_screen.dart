import 'notifier/complete_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

class CompleteScreen extends ConsumerStatefulWidget {
  const CompleteScreen({Key? key}) : super(key: key);

  @override
  CompleteScreenState createState() => CompleteScreenState();
}

class CompleteScreenState extends ConsumerState<CompleteScreen> {
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
                          child: Text("msg_order_completed".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray500
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 53.v),
                      CustomElevatedButton(
                          text: "lbl_my_order".tr,
                          onPressed: () {
                            onTapMyOrder(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the trackingOrderScreen when the action is triggered.
  onTapMyOrder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackingOrderScreen,
    );
  }
}
