import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/hotel_details_screen/models/hotel_details_model.dart';import '../models/photos_item_model.dart';import '../models/framenineteen_item_model.dart';/// A provider class for the HotelDetailsScreen.
///
/// This provider manages the state of the HotelDetailsScreen, including the
/// current hotelDetailsModelObj

// ignore_for_file: must_be_immutable
class HotelDetailsProvider extends ChangeNotifier {HotelDetailsModel hotelDetailsModelObj = HotelDetailsModel();

@override void dispose() { super.dispose(); } 
onSelected(dynamic value) { for (var element in hotelDetailsModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
