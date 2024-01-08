import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/top_locations_location_detail_screen/models/top_locations_location_detail_model.dart';import '../models/frameeightyone_item_model.dart';import '../models/toplocationslocationdetail_item_model.dart';/// A provider class for the TopLocationsLocationDetailScreen.
///
/// This provider manages the state of the TopLocationsLocationDetailScreen, including the
/// current topLocationsLocationDetailModelObj

// ignore_for_file: must_be_immutable
class TopLocationsLocationDetailProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

TopLocationsLocationDetailModel topLocationsLocationDetailModelObj = TopLocationsLocationDetailModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { topLocationsLocationDetailModelObj.frameeightyoneItemList.forEach((element) {element.isSelected = false;}); topLocationsLocationDetailModelObj.frameeightyoneItemList[index].isSelected = value; notifyListeners(); } 
 }
