import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/real_estates_list_by_category_screen/models/real_estates_list_by_category_model.dart';import 'package:flutter/material.dart';/// A controller class for the RealEstatesListByCategoryScreen.
///
/// This class manages the state of the RealEstatesListByCategoryScreen, including the
/// current realEstatesListByCategoryModelObj
class RealEstatesListByCategoryController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<RealEstatesListByCategoryModel> realEstatesListByCategoryModelObj = RealEstatesListByCategoryModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
