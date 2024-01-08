import '../home_page/widgets/options_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 40.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(10.h),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGrid)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 68.h,
                                                  top: 6.v,
                                                  bottom: 11.v),
                                              child: Text("Welcome Back!",
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                SizedBox(height: 40.v),
                                _buildTotalBalance(context),
                                SizedBox(height: 40.v),
                                _buildOptions(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildTotalBalance(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 104.h, vertical: 18.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Total Balance", style: CustomTextStyles.bodyLargeOnPrimary),
          SizedBox(height: 4.v),
          Text("3,567.12", style: CustomTextStyles.displaySmallOnPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildOptions(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 199.v,
            crossAxisCount: 2,
            mainAxisSpacing: 24.h,
            crossAxisSpacing: 24.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return OptionsItemWidget(onTapOne: () {
            onTapOne(context);
          });
        });
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobilePrepaidOneScreen);
  }
}
