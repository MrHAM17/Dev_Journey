import 'bloc/setting_edit_profile_bloc.dart';
import 'models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/core/utils/validation_functions.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

class SettingEditProfilePage extends StatefulWidget {
  const SettingEditProfilePage({Key? key}) : super(key: key);

  @override
  SettingEditProfilePageState createState() => SettingEditProfilePageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingEditProfileBloc>(
        create: (context) => SettingEditProfileBloc(SettingEditProfileState(
            settingEditProfileModelObj: SettingEditProfileModel()))
          ..add(SettingEditProfileInitialEvent()),
        child: SettingEditProfilePage());
  }
}

// ignore_for_file: must_be_immutable
class SettingEditProfilePageState extends State<SettingEditProfilePage>
    with AutomaticKeepAliveClientMixin<SettingEditProfilePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(children: [
                        SizedBox(
                            height: 170.v,
                            width: 174.h,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse28,
                                      height: 170.adaptSize,
                                      width: 170.adaptSize,
                                      radius: BorderRadius.circular(85.h),
                                      alignment: Alignment.center,
                                      onTap: () {
                                        onTapImgCircleImage(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 20.v),
                                      child: CustomIconButton(
                                          height: 38.adaptSize,
                                          width: 38.adaptSize,
                                          padding: EdgeInsets.all(9.h),
                                          decoration:
                                              IconButtonStyleHelper.fillPrimary,
                                          alignment: Alignment.bottomRight,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPencilAlt1)))
                                ])),
                        SizedBox(height: 23.v),
                        _buildInputField7(context),
                        SizedBox(height: 18.v),
                        _buildInputField9(context),
                        SizedBox(height: 17.v),
                        _buildInputField6(context),
                        SizedBox(height: 18.v),
                        _buildInputField10(context),
                        SizedBox(height: 17.v),
                        _buildInputField2(context),
                        SizedBox(height: 17.v),
                        _buildInputField11(context),
                        SizedBox(height: 18.v),
                        _buildInputField4(context),
                        SizedBox(height: 19.v),
                        _buildInputField8(context),
                        SizedBox(height: 17.v),
                        _buildInputField2(context),
                        SizedBox(height: 19.v),
                        _buildInputField12(context),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            height: 40.v,
                            text: "lbl_save".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_your_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.nameController,
          builder: (context, nameController) {
            return CustomTextFormField(
                controller: nameController, hintText: "lbl_charlene_reed".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField9(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_user_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.userNameController,
          builder: (context, userNameController) {
            return CustomTextFormField(
                controller: userNameController,
                hintText: "lbl_charlene_reed".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController, hintText: "lbl_user_gmail_com".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField10(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.passwordController,
          builder: (context, passwordController) {
            return CustomTextFormField(
                controller: passwordController,
                hintText: "lbl".tr,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField11(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_present_address".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.addressController,
          builder: (context, addressController) {
            return CustomTextFormField(
                controller: addressController,
                hintText: "msg_san_jose_california".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_permanent_address".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.addressController1,
          builder: (context, addressController1) {
            return CustomTextFormField(
                controller: addressController1,
                hintText: "msg_san_jose_california".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField8(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_city".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 7.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.cityController,
          builder: (context, cityController) {
            return CustomTextFormField(
                controller: cityController, hintText: "lbl_san_jose".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField12(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 7.v),
      BlocSelector<SettingEditProfileBloc, SettingEditProfileState,
              TextEditingController?>(
          selector: (state) => state.countryController,
          builder: (context, countryController) {
            return CustomTextFormField(
                controller: countryController,
                hintText: "lbl_usa".tr,
                textInputAction: TextInputAction.done);
          })
    ]);
  }

  /// Common widget
  Widget _buildInputField2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_postal_code".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Container(
          width: 287.h,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
          decoration: AppDecoration.outlineTeal
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Text("lbl_45962".tr,
              style: CustomTextStyles.bodySmallBluegray900))
    ]);
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapImgCircleImage(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}