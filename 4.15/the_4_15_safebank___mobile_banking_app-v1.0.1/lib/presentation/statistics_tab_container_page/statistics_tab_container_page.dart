import 'controller/statistics_tab_container_controller.dart';
import 'models/statistics_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/statistics_page/statistics_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_drop_down.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class StatisticsTabContainerPage extends StatelessWidget {
  StatisticsTabContainerPage({Key? key}) : super(key: key);

  StatisticsTabContainerController controller = Get.put(
      StatisticsTabContainerController(StatisticsTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_1_500_00".tr,
                            style: theme.textTheme.headlineLarge),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 24.h, top: 7.v, bottom: 10.v),
                            child: CustomDropDown(
                                width: 70.h,
                                hintText: "lbl_usd".tr,
                                hintStyle: theme.textTheme.labelLarge!,
                                items: controller.statisticsTabContainerModelObj
                                    .value.dropdownItemList!.value,
                                borderDecoration:
                                    DropDownStyleHelper.outlineGray,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                }))
                      ]),
                  SizedBox(height: 20.v),
                  _buildTabview(),
                  SizedBox(
                      height: 491.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            StatisticsPage(),
                            StatisticsPage(),
                            StatisticsPage()
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 49.v,
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_statistics".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 50.v,
        width: 327.h,
        decoration: BoxDecoration(
            color: appTheme.whiteA700,
            borderRadius: BorderRadius.circular(7.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.black900.withOpacity(0.05),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(0, 10))
            ]),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(child: Text("lbl_d".tr)),
              Tab(
                  child: SizedBox(
                      height: 30.v,
                      width: 197.h,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgElement,
                            height: 15.v,
                            width: 197.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      child: Text("lbl_m".tr)),
                                  CustomElevatedButton(
                                      height: 30.v,
                                      width: 65.h,
                                      text: "lbl_w".tr,
                                      margin: EdgeInsets.only(left: 28.h),
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL7,
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallWhiteA700),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 27.h, top: 4.v, bottom: 4.v),
                                      child: Text("lbl_y".tr))
                                ]))
                      ]))),
              Tab(child: Text("lbl_all".tr))
            ]));
  }
}
