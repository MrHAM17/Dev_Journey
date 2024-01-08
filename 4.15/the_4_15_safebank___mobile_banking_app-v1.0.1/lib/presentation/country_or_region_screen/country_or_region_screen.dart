import '../country_or_region_screen/widgets/countryorregion_item_widget.dart';
import 'controller/country_or_region_controller.dart';
import 'models/countryorregion_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_search_view.dart';

class CountryOrRegionScreen extends GetWidget<CountryOrRegionController> {
  const CountryOrRegionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_search_country".tr),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_country_or_region".tr,
                          style: CustomTextStyles.titleMediumSemiBold18)),
                  SizedBox(height: 14.v),
                  _buildCountryOrRegion()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildCountryOrRegion() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller
            .countryOrRegionModelObj.value.countryorregionItemList.value.length,
        itemBuilder: (context, index) {
          CountryorregionItemModel model = controller.countryOrRegionModelObj
              .value.countryorregionItemList.value[index];
          return CountryorregionItemWidget(model, onTapCountrySelection: () {
            onTapCountrySelection();
          });
        }));
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapCountrySelection() {
    Get.toNamed(AppRoutes.minePageContainerScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
