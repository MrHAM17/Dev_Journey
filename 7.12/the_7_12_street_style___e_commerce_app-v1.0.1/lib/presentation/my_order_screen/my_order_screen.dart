import '../my_order_screen/widgets/myorder_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text("My order",
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 14.v),
                      SizedBox(
                          height: 703.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 51.h, bottom: 68.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 9.v),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "",
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    TextSpan(
                                                        text: "5".toUpperCase(),
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    TextSpan(
                                                        text: "8",
                                                        style: theme.textTheme
                                                            .headlineMedium)
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 89.h),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "1",
                                                        style: CustomTextStyles
                                                            .displaySmallBlack90001),
                                                    TextSpan(
                                                        text: "x",
                                                        style: CustomTextStyles
                                                            .titleMediumBlack90001)
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            _buildMyOrder(context)
                          ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 28.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup86,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup84,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 37.h))
        ]);
  }

  /// Section Widget
  Widget _buildMyOrder(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount: 7,
            itemBuilder: (context, index) {
              return MyorderItemWidget();
            }));
  }
}
