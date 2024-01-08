import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/add_review_empty_screen/models/add_review_empty_model.dart';/// A provider class for the AddReviewEmptyScreen.
///
/// This provider manages the state of the AddReviewEmptyScreen, including the
/// current addReviewEmptyModelObj

// ignore_for_file: must_be_immutable
class AddReviewEmptyProvider extends ChangeNotifier {TextEditingController formTextareaController = TextEditingController();

AddReviewEmptyModel addReviewEmptyModelObj = AddReviewEmptyModel();

@override void dispose() { super.dispose(); formTextareaController.dispose(); } 
 }
