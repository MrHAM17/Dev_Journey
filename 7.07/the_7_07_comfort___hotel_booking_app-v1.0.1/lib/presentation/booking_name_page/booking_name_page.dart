import 'package:flutter/material.dart';import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_text_form_field.dart';class BookingNamePage extends StatefulWidget {const BookingNamePage({Key? key}) : super(key: key);

@override BookingNamePageState createState() =>  BookingNamePageState();

 }

// ignore_for_file: must_be_immutable
class BookingNamePageState extends State<BookingNamePage> with  AutomaticKeepAliveClientMixin<BookingNamePage> {TextEditingController labelController = TextEditingController();

TextEditingController labelController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 30.v), Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildLabel(context), SizedBox(height: 24.v), _buildLabel1(context), SizedBox(height: 24.v), _buildDate(context), SizedBox(height: 24.v), _buildEmail(context), SizedBox(height: 24.v), _buildPhone(context), Spacer(), _buildContinue(context)])))]))))))); } 
/// Section Widget
Widget _buildLabel(BuildContext context) { return CustomTextFormField(controller: labelController, hintText: "Daniel Austin"); } 
/// Section Widget
Widget _buildLabel1(BuildContext context) { return CustomTextFormField(controller: labelController1, hintText: "Daniel"); } 
/// Section Widget
Widget _buildDate(BuildContext context) { return CustomTextFormField(controller: dateController, hintText: "12/27/1995", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsup, height: 16.v, width: 15.h)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "user@domain.com", textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary15x15, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildPhone(BuildContext context) { return CustomTextFormField(controller: phoneController, hintText: "+1 123 456 789 000", textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 19.v, 12.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsupGray5001, height: 18.v, width: 48.h)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "Continue", onPressed: () {onTapContinue(context);}); } 
/// Navigates to the choosePaymentMethodScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.choosePaymentMethodScreen); } 
 }
