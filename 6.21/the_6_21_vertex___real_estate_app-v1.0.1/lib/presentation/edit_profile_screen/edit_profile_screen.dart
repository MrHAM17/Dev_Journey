import 'notifier/edit_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_6_21_vertex___real_estate_app/core/utils/validation_functions.dart';
import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';
import 'package:the_6_21_vertex___real_estate_app/widgets/custom_icon_button.dart';
import 'package:the_6_21_vertex___real_estate_app/widgets/custom_text_form_field.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditProfileScreenState createState() => EditProfileScreenState();
}

class EditProfileScreenState extends ConsumerState<EditProfileScreen> {
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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTapTelevision(context);
                      },
                      child: SizedBox(
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle361100x100,
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              radius: BorderRadius.circular(
                                50.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              decoration:
                                  IconButtonStyleHelper.outlineGrayTL121,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgTelevisionGray50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 33.v),
                    _buildInput(context),
                    SizedBox(height: 17.v),
                    _buildInput1(context),
                    SizedBox(height: 17.v),
                    _buildInput2(context),
                    SizedBox(height: 17.v),
                    _buildInput3(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBTN(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_edit_profile".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_full_name2".tr,
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(editProfileNotifier).fullNameController,
              hintText: "lbl_andrew_preston".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(editProfileNotifier).emailController,
              hintText: "lbl_test_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address".tr,
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(editProfileNotifier).addressController,
              hintText: "msg_merta_nadi_street".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_password".tr,
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(editProfileNotifier).passwordController,
              hintText: "lbl_123456".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBTN(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 24.v,
      ),
      decoration: AppDecoration.outlineBlueGrayF,
      child: CustomElevatedButton(
        text: "lbl_save_change".tr,
      ),
    );
  }
}
