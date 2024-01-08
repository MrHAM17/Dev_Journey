import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_drop_down.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_icon_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                                horizontal: 16.h, vertical: 23.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 84.adaptSize,
                                  width: 84.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse414,
                                            height: 84.adaptSize,
                                            width: 84.adaptSize,
                                            radius: BorderRadius.circular(42.h),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            padding: EdgeInsets.all(4.h),
                                            decoration: IconButtonStyleHelper
                                                .fillPrimaryTL15,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCamera))
                                      ])),
                              SizedBox(height: 40.v),
                              _buildInputsFied(context),
                              SizedBox(height: 23.v),
                              _buildInputsFied1(context),
                              SizedBox(height: 23.v),
                              _buildInputsFied2(context),
                              SizedBox(height: 23.v),
                              _buildInputsFied3(context),
                              SizedBox(height: 23.v),
                              _buildInputsFied4(context),
                              SizedBox(height: 23.v),
                              _buildInputsFied5(context)
                            ]))))),
            bottomNavigationBar: _buildSave(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Edit Profile"));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController, hintText: "Antonio Renders");
  }

  /// Section Widget
  Widget _buildInputsFied(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name", style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      _buildName(context)
    ]);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
        controller: userNameController, hintText: "@renders.antonio");
  }

  /// Section Widget
  Widget _buildInputsFied1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Username", style: theme.textTheme.labelMedium),
      SizedBox(height: 10.v),
      _buildUserName(context)
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "xyz@gmail.com",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildInputsFied2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email Address", style: theme.textTheme.labelMedium),
      SizedBox(height: 11.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "+123 4567 8901",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildInputsFied3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Phone number", style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      _buildPhoneNumber(context)
    ]);
  }

  /// Section Widget
  Widget _buildInputsFied4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Date of Birth", style: theme.textTheme.labelMedium),
      SizedBox(height: 11.v),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(bottom: 9.v),
            child: Text("30 February 2022", style: theme.textTheme.titleSmall)),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 29.v),
                child: Divider(color: theme.colorScheme.primaryContainer))),
        CustomImageView(
            imagePath: ImageConstant.imgThumbsUpWhiteA700,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 12.v))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildInputsFied5(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Gender", style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      CustomDropDown(
          icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 2.v, 20.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdown,
                  height: 18.adaptSize,
                  width: 18.adaptSize)),
          hintText: "Male",
          items: dropdownItemList,
          onChanged: (value) {})
    ]);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
