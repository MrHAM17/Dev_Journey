import 'models/sign_up_model.dart';
import 'notifier/sign_up_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/utils/validation_functions.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_drop_down.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_floating_text_field.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_text_form_field.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  SignUpPageState createState() => SignUpPageState();
}

// ignore_for_file: must_be_immutable
class SignUpPageState extends ConsumerState<SignUpPage>
    with AutomaticKeepAliveClientMixin<SignUpPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            decoration: AppDecoration.white,
                            child: Column(children: [
                              SizedBox(height: 70.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  child: Column(children: [
                                    _buildInputField(context),
                                    SizedBox(height: 23.v),
                                    _buildInputField1(context),
                                    SizedBox(height: 23.v),
                                    _buildInputField2(context),
                                    SizedBox(height: 24.v),
                                    _buildPassword(context),
                                    SizedBox(height: 23.v),
                                    _buildInputField3(context),
                                    SizedBox(height: 23.v),
                                    _buildJan(context),
                                    SizedBox(height: 23.v),
                                    _buildSignUp(context),
                                    SizedBox(height: 73.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 27.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("msg_already_have_an".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumGray500),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("lbl_sign_in".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary))
                                            ]))
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signUpNotifier).nameController,
          hintText: "msg_dmitry_ponomarev".tr,
          suffix: Container(
              margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 13.adaptSize,
                  width: 13.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 27.v));
    });
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_name".tr,
          style: CustomTextStyles.titleMediumSecondaryContainer_1),
      _buildName(context)
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signUpNotifier).emailController,
          hintText: "lbl_xyz_gmail_com".tr,
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
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr,
          style: CustomTextStyles.titleMediumSecondaryContainer_1),
      SizedBox(height: 1.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          width: 326.h,
          controller: ref.watch(signUpNotifier).checkmarkController,
          hintText: "lbl_1_123_456_7890".tr,
          alignment: Alignment.bottomCenter,
          suffix: Container(
              margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 13.adaptSize,
                  width: 13.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 28.v));
    });
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return SizedBox(
        height: 51.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          _buildCheckmark(context),
          Align(
              alignment: Alignment.topLeft,
              child: Text("lbl_phone".tr,
                  style: CustomTextStyles.titleMediumSecondaryContainer_1))
        ]));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomFloatingTextField(
          controller: ref.watch(signUpNotifier).passwordController,
          labelText: "lbl_password".tr,
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          obscureText: ref.watch(signUpNotifier).isShowPassword,
          suffix: InkWell(
              onTap: () {
                ref.read(signUpNotifier.notifier).changePasswordVisibility();
              },
              child: SizedBox(
                  child: CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 10.v,
                      width: 16.h))),
          suffixConstraints: BoxConstraints(maxHeight: 51.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          });
    });
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signUpNotifier).confirmpasswordController,
          hintText: "lbl_xyz123".tr,
          textInputAction: TextInputAction.done,
          suffix: Container(
              margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 10.v,
                  width: 16.h)),
          suffixConstraints: BoxConstraints(maxHeight: 26.v));
    });
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_confirm_password".tr,
          style: CustomTextStyles.titleMediumSecondaryContainer_1),
      SizedBox(height: 1.v),
      _buildConfirmpassword(context)
    ]);
  }

  /// Section Widget
  Widget _buildJan(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 52.v,
          width: 155.h,
          child: Stack(alignment: Alignment.topLeft, children: [
            Consumer(builder: (context, ref, _) {
              return CustomDropDown(
                  width: 153.h,
                  hintText: "lbl_20_jan_1998".tr,
                  alignment: Alignment.bottomCenter,
                  items: ref
                          .watch(signUpNotifier)
                          .signUpModelObj
                          ?.dropdownItemList ??
                      [],
                  onChanged: (value) {
                    selectedDropDownValue = value;
                  });
            }),
            Align(
                alignment: Alignment.topLeft,
                child: Text("lbl_date_of_birth".tr,
                    style: CustomTextStyles.titleMediumSecondaryContainer_1))
          ])),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("lbl_country_region".tr,
            style: CustomTextStyles.titleMediumSecondaryContainer_1),
        Consumer(builder: (context, ref, _) {
          return CustomDropDown(
              width: 156.h,
              hintText: "lbl_united_states".tr,
              items:
                  ref.watch(signUpNotifier).signUpModelObj?.dropdownItemList1 ??
                      [],
              onChanged: (value) {
                selectedDropDownValue1 = value;
              });
        })
      ])
    ]);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the countryOrRegionScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.countryOrRegionScreen,
    );
  }
}
