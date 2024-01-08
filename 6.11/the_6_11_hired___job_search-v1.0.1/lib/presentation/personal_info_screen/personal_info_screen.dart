import 'notifier/personal_info_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/core/utils/validation_functions.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_text_form_field.dart';

class PersonalInfoScreen extends ConsumerStatefulWidget {
  const PersonalInfoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PersonalInfoScreenState createState() => PersonalInfoScreenState();
}

class PersonalInfoScreenState extends ConsumerState<PersonalInfoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        right: 24.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          _buildINPUTFIELD(context),
                          SizedBox(height: 18.v),
                          _buildINPUTFIELD1(context),
                          SizedBox(height: 18.v),
                          _buildINPUTFIELD2(context),
                          SizedBox(height: 18.v),
                          _buildINPUTFIELD3(context),
                          SizedBox(height: 18.v),
                          _buildINPUTFIELD4(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveChanges(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgComponent1,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          bottom: 13.v,
        ),
        onTap: () {
          onTapImage(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_personal_info".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEditSquare,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildINPUTFIELD(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_first_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(personalInfoNotifier).firstNameController,
              hintText: "lbl_gustavo".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildINPUTFIELD1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_last_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(personalInfoNotifier).lastNameController,
              hintText: "lbl_lipshutz".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildINPUTFIELD2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(personalInfoNotifier).emailController,
              hintText: "lbl_xyz_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildINPUTFIELD3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(personalInfoNotifier).phoneController,
              hintText: "lbl_1_1234567890".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildINPUTFIELD4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_location".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(personalInfoNotifier).locationController,
              hintText: "lbl_lorem_ipsun".tr,
              textInputAction: TextInputAction.done,
              maxLines: 6,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 20.v,
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 44.v,
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL24,
      buttonTextStyle: CustomTextStyles.titleMediumGray50001,
    );
  }
}
