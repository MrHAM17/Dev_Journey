import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class ReceiveMoneyPersonalPage extends StatefulWidget {
  const ReceiveMoneyPersonalPage({Key? key}) : super(key: key);

  @override
  ReceiveMoneyPersonalPageState createState() =>
      ReceiveMoneyPersonalPageState();
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyPersonalPageState extends State<ReceiveMoneyPersonalPage>
    with AutomaticKeepAliveClientMixin<ReceiveMoneyPersonalPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(children: [
                        _buildFrame(context),
                        SizedBox(height: 20.v),
                        _buildInputField1(context),
                        SizedBox(height: 21.v),
                        _buildInputField2(context),
                        SizedBox(height: 20.v),
                        _buildFrame1(context),
                        SizedBox(height: 21.v),
                        _buildInputField3(context),
                        SizedBox(height: 40.v),
                        _buildSend(context)
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
  Widget _buildLastName(BuildContext context) {
    return CustomTextFormField(
        width: 173.h, controller: lastNameController, hintText: "Name");
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildInputField(context),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Last Name", style: CustomTextStyles.bodyLargeGray70001),
            SizedBox(height: 11.v),
            _buildLastName(context)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Your Email Here",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return CustomTextFormField(
        controller: countryController, hintText: "Select Country");
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Country", style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 9.v),
      _buildCountry(context)
    ]);
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: CustomTextFormField(
                controller: amountController, hintText: "0.00")));
  }

  /// Section Widget
  Widget _buildInputs(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomTextFormField(
                controller: inputsController, hintText: "USD")));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 107.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child:
                    Text("Amount", style: CustomTextStyles.bodyLargeGray70001)),
            Text("Currency", style: CustomTextStyles.bodyLargeGray70001)
          ])),
      SizedBox(height: 10.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildAmount(context), _buildInputs(context)])
    ]);
  }

  /// Section Widget
  Widget _buildInputs1(BuildContext context) {
    return CustomTextFormField(
        controller: inputsController1,
        hintText: "Write a short note",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Massage", style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 9.v),
      _buildInputs1(context)
    ]);
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
        text: "Send".toUpperCase(),
        onPressed: () {
          onTapSend(context);
        });
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.requestSentScreen);
  }
}
