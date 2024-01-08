import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/real_estates_list_by_category_screen/models/real_estates_list_by_category_model.dart';import '../models/datalist_item_model.dart';import '../models/realestateslistbycategory_item_model.dart';/// A provider class for the RealEstatesListByCategoryScreen.
///
/// This provider manages the state of the RealEstatesListByCategoryScreen, including the
/// current realEstatesListByCategoryModelObj

// ignore_for_file: must_be_immutable
class RealEstatesListByCategoryProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

RealEstatesListByCategoryModel realEstatesListByCategoryModelObj = RealEstatesListByCategoryModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
