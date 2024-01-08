import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileProfileInfoPage extends StatefulWidget {
  const ProfileProfileInfoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileProfileInfoPageState createState() => ProfileProfileInfoPageState();
}

class ProfileProfileInfoPageState extends State<ProfileProfileInfoPage>
    with AutomaticKeepAliveClientMixin<ProfileProfileInfoPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
          "First Name",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: firstNameController,
          hintText: "Archie",
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
          "Last Name",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: lastNameController,
          hintText: "Copeland",
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
          "Email address",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "archiecopeland@gmail.com",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
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
            text: "Save Edit",
          ),
        ],
      ),
    );
  }
}
