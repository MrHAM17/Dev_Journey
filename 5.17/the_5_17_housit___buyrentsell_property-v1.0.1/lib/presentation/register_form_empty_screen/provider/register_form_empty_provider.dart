import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/register_form_empty_screen/models/register_form_empty_model.dart';/// A provider class for the RegisterFormEmptyScreen.
///
/// This provider manages the state of the RegisterFormEmptyScreen, including the
/// current registerFormEmptyModelObj

// ignore_for_file: must_be_immutable
class RegisterFormEmptyProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

RegisterFormEmptyModel registerFormEmptyModelObj = RegisterFormEmptyModel();

@override void dispose() { super.dispose(); fullNameController.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
