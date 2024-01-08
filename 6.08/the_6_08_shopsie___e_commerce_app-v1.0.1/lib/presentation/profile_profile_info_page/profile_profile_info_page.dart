import 'notifier/profile_profile_info_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileProfileInfoPage extends ConsumerStatefulWidget {
  const ProfileProfileInfoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileProfileInfoPageState createState() => ProfileProfileInfoPageState();
}

class ProfileProfileInfoPageState extends ConsumerState<ProfileProfileInfoPage>
    with AutomaticKeepAliveClientMixin<ProfileProfileInfoPage> {
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
                    SizedBox(height: 38.v),
                    _buildThirtyOne(context),
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
  Widget _buildFirstName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_first_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(profileProfileInfoNotifier).firstNameController,
              hintText: "lbl_archie".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_last_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller:
                  ref.watch(profileProfileInfoNotifier).lastNameController,
              hintText: "lbl_copeland".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailAddress(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email_address".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomTextFormField(
              controller: ref.watch(profileProfileInfoNotifier).emailController,
              hintText: "msg_archiecopeland_gmail_com".tr,
              textInputAction: TextInputAction.done,
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
  Widget _buildThirtyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildFirstName(context),
          SizedBox(height: 27.v),
          _buildLastName(context),
          SizedBox(height: 26.v),
          _buildEmailAddress(context),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            text: "lbl_save_edit".tr,
          ),
        ],
      ),
    );
  }
}
