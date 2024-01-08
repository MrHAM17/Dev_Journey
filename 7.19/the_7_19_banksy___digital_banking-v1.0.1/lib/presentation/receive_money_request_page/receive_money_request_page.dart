import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class ReceiveMoneyRequestPage extends StatefulWidget {
  const ReceiveMoneyRequestPage({Key? key}) : super(key: key);

  @override
  ReceiveMoneyRequestPageState createState() => ReceiveMoneyRequestPageState();
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestPageState extends State<ReceiveMoneyRequestPage>
    with AutomaticKeepAliveClientMixin<ReceiveMoneyRequestPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController inputsController = TextEditingController();

  TextEditingController inputsController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, right: 21.h),
                      child: Column(children: [
                        _buildFrame(context),
                        SizedBox(height: 20.v),
                        _buildInputField2(context),
                        SizedBox(height: 21.v),
                        _buildInputField3(context),
                        SizedBox(height: 21.v),
                        _buildInputField4(context),
                        SizedBox(height: 20.v),
                        _buildFrame1(context),
                        SizedBox(height: 21.v),
                        _buildInputField7(context),
                        SizedBox(height: 20.v),
                        _buildAttatchFile(context),
                        SizedBox(height: 40.v),
                        CustomElevatedButton(
                            text: "Send".toUpperCase(),
                            onPressed: () {
                              onTapSend(context);
                            })
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("First Name", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h, controller: firstNameController, hintText: "Name")
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Last Name", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h, controller: lastNameController, hintText: "Name")
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildInputField(context), _buildInputField1(context)]));
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: emailController,
              hintText: "Your Email Here",
              textInputType: TextInputType.emailAddress)
        ]));
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Company Name", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: nameController, hintText: "Company name here")
        ]));
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Country", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: countryController, hintText: "Select Country")
        ]));
  }

  /// Section Widget
  Widget _buildInputField5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Amount", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              width: 173.h, controller: amountController, hintText: "0.00")
        ]));
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Currency", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              width: 173.h, controller: inputsController, hintText: "USD")
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildInputField5(context),
          _buildInputField6(context)
        ]));
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Massage", style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: inputsController1,
              hintText: "Write a short note",
              textInputAction: TextInputAction.done)
        ]));
  }

  /// Section Widget
  Widget _buildAttatchFile(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 97.h, vertical: 38.v),
        decoration: AppDecoration.outlineGray,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 2.v),
          Text("Attach File(Optional)", style: theme.textTheme.bodyLarge),
          SizedBox(height: 6.v),
          CustomImageView(
              imagePath: ImageConstant.imgFile,
              height: 32.adaptSize,
              width: 32.adaptSize)
        ]));
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.requestSentScreen);
  }
}
