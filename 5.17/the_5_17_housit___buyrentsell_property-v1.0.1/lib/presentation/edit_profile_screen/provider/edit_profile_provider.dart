import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/edit_profile_screen/models/edit_profile_model.dart';/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {TextEditingController lockController = TextEditingController();

TextEditingController settingsController = TextEditingController();

TextEditingController emailController = TextEditingController();

EditProfileModel editProfileModelObj = EditProfileModel();

@override void dispose() { super.dispose(); lockController.dispose(); settingsController.dispose(); emailController.dispose(); } 
 }
