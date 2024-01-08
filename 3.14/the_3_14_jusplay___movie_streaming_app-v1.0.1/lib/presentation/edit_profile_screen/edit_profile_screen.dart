import 'bloc/edit_profile_bloc.dart';
import 'models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/utils/validation_functions.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_drop_down.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_icon_button.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
        create: (context) => EditProfileBloc(
            EditProfileState(editProfileModelObj: EditProfileModel()))
          ..add(EditProfileInitialEvent()),
        child: EditProfileScreen());
  }

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
                                            onTap: () {
                                              onTapBtnCamera(context);
                                            },
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
        title: AppbarTitle(text: "lbl_edit_profile".tr));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
            TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
              controller: nameController, hintText: "lbl_antonio_renders".tr);
        });
  }

  /// Section Widget
  Widget _buildInputsFied(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_name".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      _buildName(context)
    ]);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
            TextEditingController?>(
        selector: (state) => state.userNameController,
        builder: (context, userNameController) {
          return CustomTextFormField(
              controller: userNameController,
              hintText: "msg_renders_antonio".tr);
        });
  }

  /// Section Widget
  Widget _buildInputsFied1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_username".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 10.v),
      _buildUserName(context)
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
            TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_xyz_gmail_com2".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildInputsFied2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 11.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
            TextEditingController?>(
        selector: (state) => state.phoneNumberController,
        builder: (context, phoneNumberController) {
          return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "lbl_123_4567_8901".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildInputsFied3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_phone_number".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      _buildPhoneNumber(context)
    ]);
  }

  /// Section Widget
  Widget _buildInputsFied4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_date_of_birth".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 11.v),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(bottom: 9.v),
            child: Text("msg_30_february_2022".tr,
                style: theme.textTheme.titleSmall)),
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
      Text("lbl_gender".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      BlocSelector<EditProfileBloc, EditProfileState, EditProfileModel?>(
          selector: (state) => state.editProfileModelObj,
          builder: (context, editProfileModelObj) {
            return CustomDropDown(
                icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 2.v, 20.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 18.adaptSize,
                        width: 18.adaptSize)),
                hintText: "lbl_male".tr,
                items: editProfileModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context
                      .read<EditProfileBloc>()
                      .add(ChangeDropDownEvent(value: value));
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapBtnCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
