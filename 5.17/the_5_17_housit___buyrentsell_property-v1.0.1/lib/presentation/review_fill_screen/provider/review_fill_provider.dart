import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/review_fill_screen/models/review_fill_model.dart';import '../models/layout_item_model.dart';/// A provider class for the ReviewFillScreen.
///
/// This provider manages the state of the ReviewFillScreen, including the
/// current reviewFillModelObj

// ignore_for_file: must_be_immutable
class ReviewFillProvider extends ChangeNotifier {TextEditingController formDateFillController = TextEditingController();

TextEditingController formDateFillController1 = TextEditingController();

TextEditingController televisionController = TextEditingController();

ReviewFillModel reviewFillModelObj = ReviewFillModel();

@override void dispose() { super.dispose(); formDateFillController.dispose(); formDateFillController1.dispose(); televisionController.dispose(); } 
 }
