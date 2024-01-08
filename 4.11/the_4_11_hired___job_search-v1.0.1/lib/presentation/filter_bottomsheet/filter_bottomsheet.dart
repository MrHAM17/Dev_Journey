import '../filter_bottomsheet/widgets/fiftyfive_item_widget.dart';
import '../filter_bottomsheet/widgets/jobs_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/fiftyfive_item_model.dart';
import 'models/jobs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FilterBottomsheet extends StatelessWidget {
  FilterBottomsheet(this.controller, {Key? key}) : super(key: key);

  FilterController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
        decoration: AppDecoration.background
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildClose(),
          SizedBox(height: 29.v),
          _buildDesignCreative(),
          SizedBox(height: 26.v),
          _buildSalaries(),
          SizedBox(height: 28.v),
          _buildJobs(),
          SizedBox(height: 30.v),
          CustomElevatedButton(
              text: "lbl_apply_filter".tr,
              onPressed: () {
                onTapApplyFilter();
              }),
          SizedBox(height: 15.v)
        ]));
  }

  /// Section Widget
  Widget _buildClose() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgComponent1Primary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          onTap: () {
            onTapImgClose();
          }),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_filter".tr, style: CustomTextStyles.titleMedium18)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
          child: Text("lbl_reset_filters".tr,
              style: CustomTextStyles.titleSmallDeeporangeA200))
    ]);
  }

  /// Section Widget
  Widget _buildDesignCreative() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_categories".tr,
                  style: CustomTextStyles.titleMediumBold_1)),
          SizedBox(height: 14.v),
          Obx(() => Wrap(
              runSpacing: 16.v,
              spacing: 16.h,
              children: List<Widget>.generate(
                  controller.filterModelObj.value.fiftyfiveItemList.value
                      .length, (index) {
                FiftyfiveItemModel model = controller
                    .filterModelObj.value.fiftyfiveItemList.value[index];
                return FiftyfiveItemWidget(model);
              })))
        ]));
  }

  /// Section Widget
  Widget _buildSalaries() {
    return Column(children: [
      _buildPrice(price: "lbl_salaries".tr, price1: "lbl_6_000_month".tr),
      SizedBox(height: 16.v),
      SliderTheme(
          data: SliderThemeData(
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: appTheme.deepOrangeA200,
              inactiveTrackColor: appTheme.gray100,
              thumbColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              thumbShape: RoundSliderThumbShape()),
          child: Slider(
              value: 52.91, min: 0.0, max: 100.0, onChanged: (value) {})),
      SizedBox(height: 2.v),
      _buildPrice(price: "lbl_560".tr, price1: "lbl_12_000".tr)
    ]);
  }

  /// Section Widget
  Widget _buildJobs() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_jobs".tr, style: CustomTextStyles.titleMediumBold_1),
          SizedBox(height: 16.v),
          Obx(() => Wrap(
              runSpacing: 16.v,
              spacing: 16.h,
              children: List<Widget>.generate(
                  controller.filterModelObj.value.jobsItemList.value.length,
                  (index) {
                JobsItemModel model =
                    controller.filterModelObj.value.jobsItemList.value[index];
                return JobsItemWidget(model);
              })))
        ]));
  }

  /// Common widget
  Widget _buildPrice({
    required String price,
    required String price1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(price,
          style: CustomTextStyles.labelLargeSemiBold
              .copyWith(color: appTheme.blueGray400)),
      Text(price1,
          style: CustomTextStyles.labelLargeSemiBold
              .copyWith(color: appTheme.blueGray400))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapApplyFilter() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
