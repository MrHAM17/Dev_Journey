import '../filter_bottomsheet/widgets/fiftyfive_item_widget.dart';
import '../filter_bottomsheet/widgets/jobs_item_widget.dart';
import 'models/fiftyfive_item_model.dart';
import 'models/jobs_item_model.dart';
import 'notifier/filter_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_elevated_button.dart';

class FilterBottomsheet extends ConsumerStatefulWidget {
  const FilterBottomsheet({Key? key}) : super(key: key);

  @override
  FilterBottomsheetState createState() => FilterBottomsheetState();
}

class FilterBottomsheetState extends ConsumerState<FilterBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
        decoration: AppDecoration.background
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildClose(context),
          SizedBox(height: 29.v),
          _buildDesignCreative(context),
          SizedBox(height: 26.v),
          _buildSalaries(context),
          SizedBox(height: 28.v),
          _buildJobs(context),
          SizedBox(height: 30.v),
          CustomElevatedButton(
              text: "lbl_apply_filter".tr,
              onPressed: () {
                onTapApplyFilter(context);
              }),
          SizedBox(height: 15.v)
        ]));
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgComponent1Primary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          onTap: () {
            onTapImgClose(context);
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
  Widget _buildDesignCreative(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_categories".tr,
                  style: CustomTextStyles.titleMediumBold_1)),
          SizedBox(height: 14.v),
          Consumer(builder: (context, ref, _) {
            return Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                    ref
                            .watch(filterNotifier)
                            .filterModelObj
                            ?.fiftyfiveItemList
                            .length ??
                        0, (index) {
                  FiftyfiveItemModel model = ref
                          .watch(filterNotifier)
                          .filterModelObj
                          ?.fiftyfiveItemList[index] ??
                      FiftyfiveItemModel();
                  return FiftyfiveItemWidget(model,
                      onSelectedChipView1: (value) {
                    ref
                        .read(filterNotifier.notifier)
                        .onSelectedChipView1(index, value);
                  });
                }));
          })
        ]));
  }

  /// Section Widget
  Widget _buildSalaries(BuildContext context) {
    return Column(children: [
      _buildPrice(context,
          price: "lbl_salaries".tr, price1: "lbl_6_000_month".tr),
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
      _buildPrice(context, price: "lbl_560".tr, price1: "lbl_12_000".tr)
    ]);
  }

  /// Section Widget
  Widget _buildJobs(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_jobs".tr, style: CustomTextStyles.titleMediumBold_1),
          SizedBox(height: 16.v),
          Consumer(builder: (context, ref, _) {
            return Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                    ref
                            .watch(filterNotifier)
                            .filterModelObj
                            ?.jobsItemList
                            .length ??
                        0, (index) {
                  JobsItemModel model = ref
                          .watch(filterNotifier)
                          .filterModelObj
                          ?.jobsItemList[index] ??
                      JobsItemModel();
                  return JobsItemWidget(model, onSelectedChipView2: (value) {
                    ref
                        .read(filterNotifier.notifier)
                        .onSelectedChipView2(index, value);
                  });
                }));
          })
        ]));
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
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

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapApplyFilter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
