import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/form_empty_screen/models/form_empty_model.dart';/// A provider class for the FormEmptyScreen.
///
/// This provider manages the state of the FormEmptyScreen, including the
/// current formEmptyModelObj

// ignore_for_file: must_be_immutable
class FormEmptyProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

FormEmptyModel formEmptyModelObj = FormEmptyModel();

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
