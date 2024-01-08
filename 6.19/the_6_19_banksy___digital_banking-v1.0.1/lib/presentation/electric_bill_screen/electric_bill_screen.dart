import '../electric_bill_screen/widgets/electricbill_item_widget.dart';
import 'models/electricbill_item_model.dart';
import 'notifier/electric_bill_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class ElectricBillScreen extends ConsumerStatefulWidget {
  const ElectricBillScreen({Key? key}) : super(key: key);

  @override
  ElectricBillScreenState createState() => ElectricBillScreenState();
}

// ignore_for_file: must_be_immutable
class ElectricBillScreenState extends ConsumerState<ElectricBillScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                                        _buildInputField(context),
                                        SizedBox(height: 19.v),
                                        _buildInputField1(context),
                                        SizedBox(height: 19.v),
                                        _buildInputField2(context),
                                        SizedBox(height: 19.v),
                                        _buildInputField3(context),
                                        SizedBox(height: 20.v),
                                        _buildFrame(context),
                                        SizedBox(height: 40.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 24.h),
                                            child: _buildTax(context,
                                                tax: "lbl_electric_fee".tr,
                                                price: "lbl_0".tr)),
                                        SizedBox(height: 16.v),
                                        Divider(endIndent: 24.h),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 24.h),
                                            child: _buildTax(context,
                                                tax: "lbl_tax".tr,
                                                price: "lbl_0".tr)),
                                        SizedBox(height: 16.v),
                                        Divider(endIndent: 24.h),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 24.h),
                                            child: _buildTax(context,
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
                                        _buildFrame1(context),
                                        SizedBox(height: 25.v),
                                        _buildElectricBill(context)
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildSendOTP(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "msg_electricity_bill2".tr));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(electricBillNotifier).nameController,
                hintText: "lbl_name_here".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_address".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(electricBillNotifier).addressController,
                hintText: "lbl_address_here".tr);
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_phone".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(electricBillNotifier).phoneController,
                hintText: "lbl_phone_here".tr,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number".tr;
                  }
                  return null;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_code".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(electricBillNotifier).inputsController,
                hintText: "msg_enter_your_billing".tr);
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_from".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            width: 173.h,
            controller: ref.watch(electricBillNotifier).dateController,
            hintText: "lbl_date".tr);
      })
    ]);
  }

  /// Section Widget
  Widget _buildInputField5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_to".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                width: 173.h,
                controller: ref.watch(electricBillNotifier).dateController1,
                hintText: "lbl_date".tr,
                textInputAction: TextInputAction.done);
          })
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Row(children: [
          _buildInputField4(context),
          _buildInputField5(context)
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
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
  Widget _buildElectricBill(BuildContext context) {
    return SizedBox(
        height: 180.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 3.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemCount: ref
                      .watch(electricBillNotifier)
                      .electricBillModelObj
                      ?.electricbillItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ElectricbillItemModel model = ref
                        .watch(electricBillNotifier)
                        .electricBillModelObj
                        ?.electricbillItemList[index] ??
                    ElectricbillItemModel();
                return ElectricbillItemWidget(model, onTapCard: () {
                  onTapCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildSendOTP(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_send_otp".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 27.h, right: 21.h, bottom: 50.v),
        onPressed: () {
          onTapSendOTP(context);
        });
  }

  /// Common widget
  Widget _buildTax(
    BuildContext context, {
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
  onTapCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the bilPaymentSuccessScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bilPaymentSuccessScreen,
    );
  }
}
