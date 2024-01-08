import '../home_page/widgets/frame2_item_widget.dart';
import '../home_page/widgets/frame3_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/frame2_item_model.dart';
import 'models/frame3_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(children: [
                        _buildFrame(),
                        SizedBox(height: 34.v),
                        _buildFrame1(),
                        SizedBox(height: 13.v),
                        _buildFrame2()
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrame() {
    return SizedBox(
        height: 292.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount:
                controller.homeModelObj.value.frame2ItemList.value.length,
            itemBuilder: (context, index) {
              Frame2ItemModel model =
                  controller.homeModelObj.value.frame2ItemList.value[index];
              return Frame2ItemWidget(model, onTapCard: () {
                onTapCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_populer_items".tr,
                      style: theme.textTheme.titleMedium),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSeeAll();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text("lbl_see_all".tr,
                              style: CustomTextStyles.titleSmallOrange700)))
                ])));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return SizedBox(
        height: 292.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount:
                controller.homeModelObj.value.frame3ItemList.value.length,
            itemBuilder: (context, index) {
              Frame3ItemModel model =
                  controller.homeModelObj.value.frame3ItemList.value[index];
              return Frame3ItemWidget(model, onTapCard: () {
                onTapCard();
              });
            })));
  }

  /// Navigates to the productViewScreen when the action is triggered.
  onTapCard() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  /// Navigates to the popularItemsScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.popularItemsScreen,
    );
  }
}
