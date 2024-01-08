import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/review_empty_screen/models/review_empty_model.dart';import '../models/cardlist_item_model.dart';/// A provider class for the ReviewEmptyScreen.
///
/// This provider manages the state of the ReviewEmptyScreen, including the
/// current reviewEmptyModelObj

// ignore_for_file: must_be_immutable
class ReviewEmptyProvider extends ChangeNotifier {TextEditingController formDateEmptyController = TextEditingController();

TextEditingController formDateEmptyController1 = TextEditingController();

TextEditingController televisionController = TextEditingController();

ReviewEmptyModel reviewEmptyModelObj = ReviewEmptyModel();

@override void dispose() { super.dispose(); formDateEmptyController.dispose(); formDateEmptyController1.dispose(); televisionController.dispose(); } 
 }
