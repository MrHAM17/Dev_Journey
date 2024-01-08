import 'controller/new_position_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_drop_down.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_text_form_field.dart';

class NewPositionScreen extends GetWidget<NewPositionController> {
  const NewPositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 36.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildINPUTFIELD(),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD1(),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD2(),
                                SizedBox(height: 18.v),
                                _buildINPUTFIELD3(),
                                SizedBox(height: 18.v),
                                _buildINPUTFIELD4(),
                                SizedBox(height: 18.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_end_date".tr,
                                        style: theme.textTheme.titleSmall)),
                                SizedBox(height: 9.v),
                                _buildFrameOne(
                                    smallLabelRegular: "lbl_select_date".tr,
                                    onTapFrameOne: () {
                                      onTapFrameOne1();
                                    }),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD5()
                              ]))))
                ])),
            bottomNavigationBar: _buildSaveChanges()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_add_new_position".tr));
  }

  /// Section Widget
  Widget _buildINPUTFIELD() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_title".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: controller.frameOneController,
          hintText: "lbl_ex_ui_designer".tr)
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD1() {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_employment_type".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 7.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 19.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkGray900,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_please_select".tr,
              items:
                  controller.newPositionModelObj.value.dropdownItemList!.value,
              onChanged: (value) {
                controller.onSelected(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildINPUTFIELD2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_company_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      CustomTextFormField(
          controller: controller.nameController, hintText: "lbl_ex_shopee".tr)
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD3() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_location2".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: controller.locationController,
          hintText: "msg_ex_singapore_singapore".tr)
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD4() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_start_date".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      _buildFrameOne(
          smallLabelRegular: "lbl_select_date".tr,
          onTapFrameOne: () {
            onTapFrameOne();
          })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD5() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_job_role_description".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      CustomTextFormField(
          controller: controller.frameOneController1,
          hintText: "lbl_lorem_ipsun".tr,
          textInputAction: TextInputAction.done,
          maxLines: 6,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v))
    ]);
  }

  /// Section Widget
  Widget _buildSaveChanges() {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v),
        onPressed: () {
          onTapSaveChanges();
        });
  }

  /// Common widget
  Widget _buildFrameOne({
    required String smallLabelRegular,
    Function? onTapFrameOne,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrameOne!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(smallLabelRegular,
                          style: CustomTextStyles.titleMediumBluegray400
                              .copyWith(color: appTheme.blueGray400))),
                  CustomImageView(
                      imagePath: ImageConstant.imgCalendar,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [newPositionModelObj] object of the current [smallLabelRegular] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller
            .newPositionModelObj.value.selectedSmallLabelRegular!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.newPositionModelObj.value.selectedSmallLabelRegular!.value =
          dateTime;
      controller.newPositionModelObj.value.smallLabelRegular.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [newPositionModelObj] object of the current [smallLabelRegular1] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne1() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller
            .newPositionModelObj.value.selectedSmallLabelRegular1!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.newPositionModelObj.value.selectedSmallLabelRegular1!.value =
          dateTime;
      controller.newPositionModelObj.value.smallLabelRegular1.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  onTapSaveChanges() {
    Get.toNamed(
      AppRoutes.experienceSettingScreen,
    );
  }
}
