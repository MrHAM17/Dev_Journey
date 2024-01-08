import 'notifier/create_new_password_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/core/utils/validation_functions.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends ConsumerStatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  CreateNewPasswordScreenState createState() => CreateNewPasswordScreenState();
}

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreenState
    extends ConsumerState<CreateNewPasswordScreen> {
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
                                horizontal: 24.h, vertical: 42.v),
                            child: Column(children: [
                              _buildTitle(context),
                              SizedBox(height: 24.v),
                              Consumer(builder: (context, ref, _) {
                                return CustomTextFormField(
                                    controller: ref
                                        .watch(createNewPasswordNotifier)
                                        .newpasswordController,
                                    hintText: "msg_enter_new_password".tr,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            24.h, 16.v, 16.h, 16.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 56.v),
                                    suffix: InkWell(
                                        onTap: () {
                                          ref
                                              .read(createNewPasswordNotifier
                                                  .notifier)
                                              .changePasswordVisibility();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 16.v, 24.h, 16.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant.imgEye,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 56.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: ref
                                        .watch(createNewPasswordNotifier)
                                        .isShowPassword);
                              }),
                              SizedBox(height: 16.v),
                              Consumer(builder: (context, ref, _) {
                                return CustomTextFormField(
                                    controller: ref
                                        .watch(createNewPasswordNotifier)
                                        .confirmpasswordController,
                                    hintText: "msg_confirm_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            24.h, 16.v, 16.h, 16.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 56.v),
                                    suffix: InkWell(
                                        onTap: () {
                                          ref
                                              .read(createNewPasswordNotifier
                                                  .notifier)
                                              .changePasswordVisibility1();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 16.v, 24.h, 16.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant.imgEye,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 56.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: ref
                                        .watch(createNewPasswordNotifier)
                                        .isShowPassword1);
                              }),
                              SizedBox(height: 24.v),
                              CustomElevatedButton(
                                  text: "lbl_create_password".tr,
                                  onPressed: () {
                                    onTapCreatePassword(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeftOnprimary,
            margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v)));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_create_new_password".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 12.v),
      Text("msg_create_your_new".tr, style: CustomTextStyles.titleMediumGray500)
    ]);
  }

  onTapCreatePassword(BuildContext context) {
    // TODO: implement Actions
  }
}
