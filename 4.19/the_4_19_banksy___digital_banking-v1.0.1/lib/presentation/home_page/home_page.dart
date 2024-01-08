import '../home_page/widgets/options_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

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
                                              child: Text("lbl_welcome_back".tr,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                SizedBox(height: 40.v),
                                _buildTotalBalance(),
                                SizedBox(height: 40.v),
                                _buildOptions()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildTotalBalance() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 104.h, vertical: 18.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_total_balance".tr,
              style: CustomTextStyles.bodyLargeOnPrimary),
          SizedBox(height: 4.v),
          Text("lbl_3_567_12".tr, style: CustomTextStyles.displaySmallOnPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildOptions() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 199.v,
            crossAxisCount: 2,
            mainAxisSpacing: 24.h,
            crossAxisSpacing: 24.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.homeModelObj.value.optionsItemList.value.length,
        itemBuilder: (context, index) {
          OptionsItemModel model =
              controller.homeModelObj.value.optionsItemList.value[index];
          return OptionsItemWidget(model, onTapOne: () {
            onTapOne();
          });
        }));
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.
  onTapOne() {
    Get.toNamed(
      AppRoutes.mobilePrepaidOneScreen,
    );
  }
}
