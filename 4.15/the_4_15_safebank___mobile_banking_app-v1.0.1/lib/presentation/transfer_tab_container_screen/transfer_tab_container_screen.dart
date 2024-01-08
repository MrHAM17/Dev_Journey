import '../transfer_tab_container_screen/widgets/transfertabcontainer_item_widget.dart';
import 'controller/transfer_tab_container_controller.dart';
import 'models/transfertabcontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/transfer_page/transfer_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';

class TransferTabContainerScreen
    extends GetWidget<TransferTabContainerController> {
  const TransferTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 30.v),
                  _buildTransferTabContainer(),
                  SizedBox(height: 12.v),
                  Text("lbl_alex_dordan".tr,
                      style: CustomTextStyles.titleMedium18),
                  SizedBox(height: 1.v),
                  Text("lbl_web_developer".tr,
                      style: theme.textTheme.labelMedium),
                  SizedBox(height: 28.v),
                  _buildContrast(),
                  SizedBox(height: 51.v),
                  Container(
                      height: 30.v,
                      width: 210.h,
                      child: TabBar(
                          controller: controller.tabviewController,
                          labelPadding: EdgeInsets.zero,
                          labelColor: appTheme.whiteA700,
                          labelStyle: TextStyle(
                              fontSize: 12.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                          unselectedLabelColor: appTheme.black900,
                          unselectedLabelStyle: TextStyle(
                              fontSize: 12.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                          indicator: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(7.h),
                              boxShadow: [
                                BoxShadow(
                                    color: theme.colorScheme.onError,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(0, 4))
                              ]),
                          tabs: [
                            Tab(child: Text("lbl_eur".tr)),
                            Tab(child: Text("lbl_usd".tr)),
                            Tab(child: Text("lbl_gbp".tr))
                          ])),
                  _buildTabBarView()
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
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_transfer".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildTransferTabContainer() {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 80.v,
            child: Obx(() => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 24.h);
                },
                itemCount: controller.transferTabContainerModelObj.value
                    .transfertabcontainerItemList.value.length,
                itemBuilder: (context, index) {
                  TransfertabcontainerItemModel model = controller
                      .transferTabContainerModelObj
                      .value
                      .transfertabcontainerItemList
                      .value[index];
                  return TransfertabcontainerItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildContrast() {
    return Container(
        width: 325.h,
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 49.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup199), fit: BoxFit.cover)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgContrastWhiteA700,
                  height: 23.v,
                  width: 36.h,
                  margin: EdgeInsets.only(bottom: 18.v)),
              CustomImageView(
                  imagePath: ImageConstant.img1,
                  height: 4.v,
                  width: 32.h,
                  margin: EdgeInsets.only(left: 20.h, top: 10.v, bottom: 27.v)),
              CustomImageView(
                  imagePath: ImageConstant.img1,
                  height: 4.v,
                  width: 32.h,
                  margin: EdgeInsets.only(left: 10.h, top: 10.v, bottom: 27.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 22.v),
                  child: Text("lbl_4023".tr,
                      style: CustomTextStyles.labelMediumWhiteA700_1)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 22.v),
                  child: Text("lbl_5534".tr,
                      style: CustomTextStyles.labelMediumWhiteA700_1))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
        height: 303.v,
        child: TabBarView(
            controller: controller.tabviewController,
            children: [TransferPage(), TransferPage(), TransferPage()]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
