import '../language_screen/widgets/chineses_item_widget.dart';
import '../language_screen/widgets/englishuk_item_widget.dart';
import 'controller/language_controller.dart';
import 'models/chineses_item_model.dart';
import 'models/englishuk_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(children: [
                  _buildSuggestedLanguages(),
                  SizedBox(height: 24.v),
                  _buildOtherLanguages(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowBack();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_language".tr));
  }

  /// Section Widget
  Widget _buildSuggestedLanguages() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_suggested_languages".tr,
                  style: CustomTextStyles.labelLargeSemiBold),
              SizedBox(height: 16.v),
              Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.0.v),
                        child: SizedBox(
                            width: 295.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300)));
                  },
                  itemCount: controller
                      .languageModelObj.value.englishukItemList.value.length,
                  itemBuilder: (context, index) {
                    EnglishukItemModel model = controller
                        .languageModelObj.value.englishukItemList.value[index];
                    return EnglishukItemWidget(model);
                  }))
            ]));
  }

  /// Section Widget
  Widget _buildOtherLanguages() {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("lbl_other_languages".tr,
                  style: CustomTextStyles.labelLargeSemiBold),
              SizedBox(height: 19.v),
              Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.v),
                        child: SizedBox(
                            width: 295.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300)));
                  },
                  itemCount: controller
                      .languageModelObj.value.chinesesItemList.value.length,
                  itemBuilder: (context, index) {
                    ChinesesItemModel model = controller
                        .languageModelObj.value.chinesesItemList.value[index];
                    return ChinesesItemWidget(model);
                  }))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }
}
