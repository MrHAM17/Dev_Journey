import 'bloc/get_started_bloc.dart';
import 'models/get_started_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_outlined_button.dart';
import 'package:the_3_22_first_bank___digital_banking/domain/googleauth/google_auth_helper.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GetStartedBloc>(
        create: (context) => GetStartedBloc(
            GetStartedState(getStartedModelObj: GetStartedModel()))
          ..add(GetStartedInitialEvent()),
        child: GetStartedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStartedBloc, GetStartedState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 16.h, top: 123.v, right: 16.h),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("msg_lets_get_started".tr,
                            style: theme.textTheme.headlineMedium)),
                    SizedBox(height: 14.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 220.h,
                            child: Text("msg_find_the_right_and".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallBluegray40001
                                    .copyWith(height: 1.50)))),
                    SizedBox(height: 21.v),
                    _buildLogin(context),
                    SizedBox(height: 16.v),
                    _buildRegister(context),
                    SizedBox(height: 26.v),
                    Text("msg_or_use_instant_sign".tr,
                        style: CustomTextStyles.labelLargeBluegray400),
                    SizedBox(height: 24.v),
                    _buildSignWithGoogle(context),
                    SizedBox(height: 24.v),
                    _buildSignWithApple(context),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapLogin(context);
        });
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapRegister(context);
        });
  }

  /// Section Widget
  Widget _buildSignWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "msg_sign_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001,
        onPressed: () {
          onTapSignWithGoogle(context);
        });
  }

  /// Section Widget
  Widget _buildSignWithApple(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_sign_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the registersScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registersScreen,
    );
  }

  onTapSignWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
