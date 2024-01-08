import '../electric_bill_screen/widgets/electricbill_item_widget.dart';
import 'controller/electric_bill_controller.dart';
import 'models/electricbill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ElectricBillScreen extends GetWidget<ElectricBillController> {
  ElectricBillScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 34.v),
                    child: Column(children: [
                      SizedBox(height: 33.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 24.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildInputField(),
                                        SizedBox(height: 19.v),
                                        _buildInputField1(),
                                        SizedBox(height: 19.v),
                                        _buildInputField2(),
                                        SizedBox(height: 19.v),
                                        _buildInputField3(),
                                        SizedBox(height: 20.v),
                                        _buildFrame(),
                                        SizedBox(height: 40.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 24.h),
                                            child: _buildTax(
                                                tax: "lbl_electric_fee".tr,
                                                price: "lbl_0".tr)),
                                        SizedBox(height: 16.v),
                                        Divider(endIndent: 24.h),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 24.h),
                                            child: _buildTax(
                                                tax: "lbl_tax".tr,
                                                price: "lbl_0".tr)),
                                        SizedBox(height: 16.v),
                                        Divider(endIndent: 24.h),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 24.h),
                                            child: _buildTax(
                                                tax: "lbl_total".tr,
                                                price: "lbl_0".tr)),
                                        SizedBox(height: 16.v),
                                        Divider(endIndent: 24.h),
                                        SizedBox(height: 11.v),
                                        Text("lbl_otp".tr,
                                            style: CustomTextStyles
                                                .titleMediumTeal300),
                                        SizedBox(height: 15.v),
                                        Divider(endIndent: 24.h),
                                        SizedBox(height: 39.v),
                                        _buildFrame1(),
                                        SizedBox(height: 25.v),
                                        _buildElectricBill()
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildSendOTP()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "msg_electricity_bill2".tr));
  }

  /// Section Widget
  Widget _buildInputField() {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.nameController,
              hintText: "lbl_name_here".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildInputField1() {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_address".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.addressController,
              hintText: "lbl_address_here".tr)
        ]));
  }

  /// Section Widget
  Widget _buildInputField2() {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_phone".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.phoneController,
              hintText: "lbl_phone_here".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildInputField3() {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_code".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.inputsController,
              hintText: "msg_enter_your_billing".tr)
        ]));
  }

  /// Section Widget
  Widget _buildInputField4() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_from".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      CustomTextFormField(
          width: 173.h,
          controller: controller.dateController,
          hintText: "lbl_date".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField5() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_to".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h,
              controller: controller.dateController1,
              hintText: "lbl_date".tr,
              textInputAction: TextInputAction.done)
        ]));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Row(children: [_buildInputField4(), _buildInputField5()]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 27.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_select_card".tr,
              style: CustomTextStyles.headlineSmallExtraBold),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
              child: Text("lbl_add_card".tr,
                  style: CustomTextStyles.titleMediumPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildElectricBill() {
    return SizedBox(
        height: 180.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 3.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: controller
                .electricBillModelObj.value.electricbillItemList.value.length,
            itemBuilder: (context, index) {
              ElectricbillItemModel model = controller
                  .electricBillModelObj.value.electricbillItemList.value[index];
              return ElectricbillItemWidget(model, onTapCard: () {
                onTapCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildSendOTP() {
    return CustomElevatedButton(
        text: "lbl_send_otp".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 27.h, right: 21.h, bottom: 50.v),
        onPressed: () {
          onTapSendOTP();
        });
  }

  /// Common widget
  Widget _buildTax({
    required String tax,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
          child: Text(tax,
              style: CustomTextStyles.bodyLarge16
                  .copyWith(color: appTheme.gray500))),
      Text(price,
          style: theme.textTheme.headlineSmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer))
    ]);
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard() {
    Get.toNamed(AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the bilPaymentSuccessScreen when the action is triggered.
  onTapSendOTP() {
    Get.toNamed(
      AppRoutes.bilPaymentSuccessScreen,
    );
  }
}
