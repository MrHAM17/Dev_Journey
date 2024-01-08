import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/add_review_fill_screen/models/add_review_fill_model.dart';import '../models/addreviewfill_item_model.dart';/// A provider class for the AddReviewFillScreen.
///
/// This provider manages the state of the AddReviewFillScreen, including the
/// current addReviewFillModelObj

// ignore_for_file: must_be_immutable
class AddReviewFillProvider extends ChangeNotifier {TextEditingController formTextareaController = TextEditingController();

AddReviewFillModel addReviewFillModelObj = AddReviewFillModel();

@override void dispose() { super.dispose(); formTextareaController.dispose(); } 
 }
