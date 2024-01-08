import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_checkbox_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardOneScreen extends StatelessWidget {
  AddCardOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  bool saveMyCardDetails = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 34.v),
                            child: Column(children: [
                              _buildInputField(context),
                              SizedBox(height: 19.v),
                              _buildInputField1(context),
                              SizedBox(height: 19.v),
                              _buildFrame(context),
                              SizedBox(height: 21.v),
                              _buildSaveMyCardDetails(context),
                              SizedBox(height: 41.v),
                              CustomElevatedButton(
                                  text: "Save".toUpperCase(),
                                  margin: EdgeInsets.only(left: 6.h),
                                  onPressed: () {
                                    onTapSave(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "New Card"));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Name", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(controller: nameController, hintText: "User Name")
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Card Number ", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: cardNumberController,
              hintText: "Card Number",
              textInputType: TextInputType.number)
        ]));
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 1.v, right: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Expires", style: CustomTextStyles.bodyLargeGray70001),
              SizedBox(height: 9.v),
              CustomTextFormField(
                  width: 173.h, controller: dateController, hintText: "Date")
            ])));
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("CVV", style: CustomTextStyles.bodyLargeGray70001),
              SizedBox(height: 11.v),
              CustomTextFormField(
                  width: 173.h,
                  controller: cvvController,
                  hintText: "Code",
                  textInputAction: TextInputAction.done)
            ])));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildInputField2(context),
          _buildInputField3(context)
        ]));
  }

  /// Section Widget
  Widget _buildSaveMyCardDetails(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Save My Card Details",
                value: saveMyCardDetails,
                onChange: (value) {
                  saveMyCardDetails = value;
                })));
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentSuccessScreen);
  }
}
