import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/user_empty_screen/models/user_empty_model.dart';/// A provider class for the UserEmptyScreen.
///
/// This provider manages the state of the UserEmptyScreen, including the
/// current userEmptyModelObj

// ignore_for_file: must_be_immutable
class UserEmptyProvider extends ChangeNotifier {TextEditingController lockController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

UserEmptyModel userEmptyModelObj = UserEmptyModel();

@override void dispose() { super.dispose(); lockController.dispose(); mobileNumberController.dispose(); emailController.dispose(); } 
 }
