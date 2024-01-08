import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/create_new_pin_screen/models/create_new_pin_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the CreateNewPinScreen.
///
/// This class manages the state of the CreateNewPinScreen, including the
/// current createNewPinModelObj
class CreateNewPinController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<CreateNewPinModel> createNewPinModelObj = CreateNewPinModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
