import '../payment_method_screen/widgets/paymentmethodlist_item_widget.dart';
import 'controller/payment_method_controller.dart';
import 'models/paymentmethodlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(children: [
                  _buildOrderSummary(),
                  SizedBox(height: 34.v),
                  _buildPaymentMethode(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildContinuePayment()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 324.h, 7.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildOrderSummary() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_order_summary".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 13.v),
      Container(
          padding: EdgeInsets.all(24.h),
          decoration: AppDecoration.cardBg
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_premiun_weekly".tr,
                            style: CustomTextStyles.titleSmallSemiBold),
                        SizedBox(height: 4.v),
                        Text("msg_including_tax_and".tr,
                            style: theme.textTheme.labelMedium)
                      ]),
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 4.v),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_50".tr,
                                style: CustomTextStyles.headlineSmallBold),
                            TextSpan(
                                text: "lbl_week".tr,
                                style: theme.textTheme.labelMedium)
                          ]),
                          textAlign: TextAlign.left))
                ]),
            SizedBox(height: 18.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CustomTextFormField(
                  width: 202.h,
                  controller: controller.inputsFiedController,
                  hintText: "msg_have_a_vucher_code".tr,
                  hintStyle: CustomTextStyles.bodySmallPrimaryContainer,
                  textInputAction: TextInputAction.done,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
                  borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                  filled: true,
                  fillColor: appTheme.blueGray800),
              CustomElevatedButton(
                  height: 39.v,
                  width: 80.h,
                  text: "lbl_apply".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                  buttonTextStyle: theme.textTheme.titleSmall!)
            ]),
            SizedBox(height: 16.v),
            Opacity(
                opacity: 0.2,
                child: Divider(color: appTheme.whiteA700.withOpacity(0.42))),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                  child: Text("lbl_total".tr,
                      style: CustomTextStyles.titleMedium16)),
              Text("lbl_50".tr, style: CustomTextStyles.titleLargeBold)
            ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildPaymentMethode() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_payment_method".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 14.v),
      Obx(() => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.v);
          },
          itemCount: controller.paymentMethodModelObj.value
              .paymentmethodlistItemList.value.length,
          itemBuilder: (context, index) {
            PaymentmethodlistItemModel model = controller.paymentMethodModelObj
                .value.paymentmethodlistItemList.value[index];
            return PaymentmethodlistItemWidget(model);
          }))
    ]);
  }

  /// Section Widget
  Widget _buildContinuePayment() {
    return CustomElevatedButton(
        text: "msg_continue_payment".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 17.v),
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
