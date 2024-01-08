import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileSecurityPage extends StatefulWidget {
  const ProfileSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSecurityPageState createState() => ProfileSecurityPageState();
}

class ProfileSecurityPageState extends State<ProfileSecurityPage>
    with AutomaticKeepAliveClientMixin<ProfileSecurityPage> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

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
          "Current password",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Password",
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
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
          "New password",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: newpasswordController,
          hintText: "Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
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
              "Change password",
              style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
            ),
          ),
          SizedBox(height: 22.v),
          _buildCurrentPassword(context),
          SizedBox(height: 28.v),
          _buildNewPassword(context),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            text: "Update Password",
            buttonStyle: CustomButtonStyles.fillGray,
          ),
        ],
      ),
    );
  }
}
