import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/create_new_pin_screen/models/create_new_pin_model.dart';/// A provider class for the CreateNewPinScreen.
///
/// This provider manages the state of the CreateNewPinScreen, including the
/// current createNewPinModelObj

// ignore_for_file: must_be_immutable
class CreateNewPinProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

CreateNewPinModel createNewPinModelObj = CreateNewPinModel();

@override void dispose() { super.dispose(); } 
 }
