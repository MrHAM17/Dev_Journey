import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';class PaymentMastercardPage extends StatefulWidget {const PaymentMastercardPage({Key? key}) : super(key: key);

@override PaymentMastercardPageState createState() =>  PaymentMastercardPageState();

 }

// ignore_for_file: must_be_immutable
class PaymentMastercardPageState extends State<PaymentMastercardPage> with  AutomaticKeepAliveClientMixin<PaymentMastercardPage> {TextEditingController lockController = TextEditingController();

TextEditingController cvvController = TextEditingController();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: _buildScrollView(context))); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Column(children: [SizedBox(height: 20.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [CustomTextFormField(controller: lockController, hintText: "Jonathan Anderson", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("1222 3443 9881 1222", style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgThumbsUpBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)])), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 5.h), padding: EdgeInsets.symmetric(vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("11/05/2023", style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)]))), Container(margin: EdgeInsets.only(left: 5.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomTextFormField(width: 59.h, controller: cvvController, hintText: "CVV", hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgThumbsUpBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 20.v), contentPadding: EdgeInsets.symmetric(vertical: 1.v)))]), SizedBox(height: 30.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 10.v), CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})]))])); } 
/// Navigates to the userEmptyScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.userEmptyScreen); } 
 }
