import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/recently_booked_screen/models/recently_booked_model.dart';import '../models/recentlybooked_item_model.dart';/// A provider class for the RecentlyBookedScreen.
///
/// This provider manages the state of the RecentlyBookedScreen, including the
/// current recentlyBookedModelObj

// ignore_for_file: must_be_immutable
class RecentlyBookedProvider extends ChangeNotifier {RecentlyBookedModel recentlyBookedModelObj = RecentlyBookedModel();

@override void dispose() { super.dispose(); } 
 }
