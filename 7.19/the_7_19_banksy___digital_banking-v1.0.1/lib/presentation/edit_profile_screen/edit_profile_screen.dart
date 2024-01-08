import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

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
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 18.v,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 139.adaptSize,
                      width: 139.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse107,
                            height: 139.adaptSize,
                            width: 139.adaptSize,
                            radius: BorderRadius.circular(
                              69.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 7.h),
                            child: CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgThumbsUpOnprimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "Suzane Jobs",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "user@gmail.com",
                      style: CustomTextStyles.titleSmallGray500,
                    ),
                    SizedBox(height: 41.v),
                    _buildInputField(context),
                    SizedBox(height: 23.v),
                    _buildInputField1(context),
                    SizedBox(height: 23.v),
                    _buildInputField2(context),
                    SizedBox(height: 40.v),
                    CustomElevatedButton(
                      text: "Save".toUpperCase(),
                    ),
                    SizedBox(height: 5.v),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Edit Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: CustomTextStyles.bodyLargeGray70001,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "Suzane Jobs",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: CustomTextStyles.bodyLargeGray70001,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "abc@gmail.com",
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone",
          style: CustomTextStyles.bodyLargeGray70001,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: phoneController,
          hintText: "+91 123456890",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
