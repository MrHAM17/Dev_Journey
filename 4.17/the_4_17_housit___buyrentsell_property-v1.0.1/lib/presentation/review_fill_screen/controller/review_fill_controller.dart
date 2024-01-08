import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/review_fill_screen/models/review_fill_model.dart';import 'package:flutter/material.dart';/// A controller class for the ReviewFillScreen.
///
/// This class manages the state of the ReviewFillScreen, including the
/// current reviewFillModelObj
class ReviewFillController extends GetxController {TextEditingController formDateFillController = TextEditingController();

TextEditingController formDateFillController1 = TextEditingController();

TextEditingController televisionController = TextEditingController();

Rx<ReviewFillModel> reviewFillModelObj = ReviewFillModel().obs;

@override void onClose() { super.onClose(); formDateFillController.dispose(); formDateFillController1.dispose(); televisionController.dispose(); } 
 }
