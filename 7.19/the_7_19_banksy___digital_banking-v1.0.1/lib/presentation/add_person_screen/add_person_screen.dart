import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_checkbox_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddPersonScreen extends StatelessWidget {
  AddPersonScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  bool saveOnList = false;

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
                                horizontal: 24.h, vertical: 34.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 100.adaptSize,
                                                width: 100.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.h)))),
                                        CustomIconButton(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            padding: EdgeInsets.all(9.h),
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGroup18117)),
                                        CustomImageView(
                                            imagePath: ImageConstant.img1Avatar,
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            alignment: Alignment.center)
                                      ])),
                              SizedBox(height: 40.v),
                              _buildInputField(context),
                              SizedBox(height: 19.v),
                              _buildInputField1(context),
                              SizedBox(height: 19.v),
                              _buildSaveOnList(context),
                              SizedBox(height: 43.v),
                              CustomElevatedButton(
                                  text: "Save".toUpperCase(),
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
        title: AppbarTitle(text: "New Contact"));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name", style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      CustomTextFormField(controller: nameController, hintText: "User Name")
    ]);
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Card Number ", style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: cardNumberController,
          hintText: "Card Number",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number)
    ]);
  }

  /// Section Widget
  Widget _buildSaveOnList(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "Save On List",
            value: saveOnList,
            onChange: (value) {
              saveOnList = value;
            }));
  }

  /// Navigates to the addCardOneScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addCardOneScreen);
  }
}
