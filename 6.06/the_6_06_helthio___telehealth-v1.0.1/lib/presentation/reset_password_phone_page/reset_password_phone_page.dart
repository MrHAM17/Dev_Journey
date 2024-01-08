import 'notifier/reset_password_phone_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/core/utils/validation_functions.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_text_form_field.dart';

class ResetPasswordPhonePage extends ConsumerStatefulWidget {
  const ResetPasswordPhonePage({Key? key}) : super(key: key);

  @override
  ResetPasswordPhonePageState createState() => ResetPasswordPhonePageState();
}

// ignore_for_file: must_be_immutable
class ResetPasswordPhonePageState extends ConsumerState<ResetPasswordPhonePage>
    with AutomaticKeepAliveClientMixin<ResetPasswordPhonePage> {
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
                              SizedBox(height: 24.v),
                              _buildMobileNo(context)
                            ])))))));
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller:
                    ref.watch(resetPasswordPhoneNotifier).mobileNoController,
                hintText: "lbl_1234567890".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.phone,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIconCall,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 56.v),
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
          }),
          SizedBox(height: 32.v),
          CustomElevatedButton(
              text: "lbl_send_otp".tr,
              onPressed: () {
                onTapSendOTP(context);
              })
        ]));
  }

  /// Navigates to the resetPasswordVerifyCodeScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordVerifyCodeScreen,
    );
  }
}
