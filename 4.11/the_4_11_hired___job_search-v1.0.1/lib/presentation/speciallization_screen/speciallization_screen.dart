import '../speciallization_screen/widgets/speciallization_item_widget.dart';
import 'controller/speciallization_controller.dart';
import 'models/speciallization_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_4_11_hired___job_search/presentation/confirmation_dialog/confirmation_dialog.dart';
import 'package:the_4_11_hired___job_search/presentation/confirmation_dialog/controller/confirmation_controller.dart';

class SpeciallizationScreen extends GetWidget<SpeciallizationController> {
  const SpeciallizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 31.v),
                child: Column(children: [
                  SizedBox(
                      width: 177.h,
                      child: Text("msg_what_is_your_specialization".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.33))),
                  SizedBox(height: 7.v),
                  Text("msg_lorem_ipsum_dolor2".tr,
                      style: CustomTextStyles.titleSmallBluegray400),
                  SizedBox(height: 31.v),
                  _buildSpeciallization()
                ])),
            bottomNavigationBar: _buildContinue()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapImage();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildSpeciallization() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: controller.speciallizationModelObj.value
                .speciallizationItemList.value.length,
            itemBuilder: (context, index) {
              SpeciallizationItemModel model = controller
                  .speciallizationModelObj
                  .value
                  .speciallizationItemList
                  .value[index];
              return SpeciallizationItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildContinue() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 39.v),
        onPressed: () {
          onTapContinue();
        });
  }

  /// Navigates to the previous screen.
  onTapImage() {
    Get.back();
  }

  /// Displays a dialog with the [ConfirmationDialog] content.
  onTapContinue() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: ConfirmationDialog(
        Get.put(
          ConfirmationController(),
        ),
      ),
    ));
  }
}
