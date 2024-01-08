import 'controller/create_new_pin_controller.dart';import 'models/create_new_pin_model.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class CreateNewPinPage extends StatelessWidget {CreateNewPinPage({Key? key}) : super(key: key);

CreateNewPinController controller = Get.put(CreateNewPinController(CreateNewPinModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 116.v), CustomElevatedButton(width: 380.h, text: "lbl_continue".tr, margin: EdgeInsets.symmetric(horizontal: 24.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapContinue();})])))); } 
/// Navigates to the setYourFingerprintScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.setYourFingerprintScreen, ); } 
 }
