import 'bloc/language_bloc.dart';
import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_03_todo/core/app_export.dart';
import 'package:the_3_03_todo/widgets/custom_elevated_button.dart';
import 'package:the_3_03_todo/widgets/custom_icon_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LanguageBloc>(
        create: (context) =>
            LanguageBloc(LanguageState(languageModelObj: LanguageModel()))
              ..add(LanguageInitialEvent()),
        child: LanguageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 43.v),
                  child: Column(children: [
                    CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        alignment: Alignment.centerLeft,
                        onTap: () {
                          onTapBtnArrowLeft(context);
                        },
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft)),
                    SizedBox(height: 82.v),
                    _buildPageHeader(context),
                    SizedBox(height: 87.v),
                    CustomElevatedButton(
                        text: "lbl_indonesian2".tr,
                        buttonStyle: CustomButtonStyles.fillDeepOrange,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeSecondaryContainer,
                        onPressed: () {
                          onTapIndonesian(context);
                        }),
                    SizedBox(height: 14.v),
                    CustomElevatedButton(
                        text: "lbl_english".tr,
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeDeeppurpleA400),
                    Spacer(),
                    SizedBox(height: 53.v),
                    CustomElevatedButton(
                        text: "lbl_save".tr,
                        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                        onPressed: () {
                          onTapSave(context);
                        })
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_language".tr, style: theme.textTheme.headlineMedium),
          SizedBox(height: 7.v),
          Text("msg_your_settings_so".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapIndonesian(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
