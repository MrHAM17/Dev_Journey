import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/success_screen/models/success_model.dart';/// A provider class for the SuccessScreen.
///
/// This provider manages the state of the SuccessScreen, including the
/// current successModelObj

// ignore_for_file: must_be_immutable
class SuccessProvider extends ChangeNotifier {SuccessModel successModelObj = SuccessModel();

@override void dispose() { super.dispose(); } 
 }
