import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/write_review_fill_screen/models/write_review_fill_model.dart';/// A provider class for the WriteReviewFillScreen.
///
/// This provider manages the state of the WriteReviewFillScreen, including the
/// current writeReviewFillModelObj

// ignore_for_file: must_be_immutable
class WriteReviewFillProvider extends ChangeNotifier {TextEditingController addReviewController = TextEditingController();

WriteReviewFillModel writeReviewFillModelObj = WriteReviewFillModel();

@override void dispose() { super.dispose(); addReviewController.dispose(); } 
 }
