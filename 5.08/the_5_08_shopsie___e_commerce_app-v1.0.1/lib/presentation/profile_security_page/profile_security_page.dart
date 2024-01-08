import 'models/profile_security_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';
import 'provider/profile_security_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileSecurityPage extends StatefulWidget {
  const ProfileSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSecurityPageState createState() => ProfileSecurityPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileSecurityProvider(),
      child: ProfileSecurityPage(),
    );
  }
}

class ProfileSecurityPageState extends State<ProfileSecurityPage>
    with AutomaticKeepAliveClientMixin<ProfileSecurityPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                decoration: AppDecoration.white,
                child: Column(
                  children: [
                    SizedBox(height: 97.v),
                    _buildThirty(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentPassword(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_current_password".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 11.v),
        Selector<ProfileSecurityProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.passwordController,
          builder: (context, passwordController, child) {
            return CustomTextFormField(
              controller: passwordController,
              hintText: "lbl_password".tr,
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
  Widget _buildNewPassword(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_new_password".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 11.v),
        Selector<ProfileSecurityProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.newpasswordController,
          builder: (context, newpasswordController, child) {
            return CustomTextFormField(
              controller: newpasswordController,
              hintText: "lbl_password".tr,
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
  Widget _buildThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_change_password".tr,
              style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
            ),
          ),
          SizedBox(height: 22.v),
          _buildCurrentPassword(context),
          SizedBox(height: 28.v),
          _buildNewPassword(context),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            text: "lbl_update_password".tr,
            buttonStyle: CustomButtonStyles.fillGray,
          ),
        ],
      ),
    );
  }
}
