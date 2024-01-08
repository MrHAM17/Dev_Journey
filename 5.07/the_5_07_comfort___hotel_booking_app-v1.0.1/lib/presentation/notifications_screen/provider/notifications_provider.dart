import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/notifications_screen/models/notifications_model.dart';import '../models/notifications_item_model.dart';/// A provider class for the NotificationsScreen.
///
/// This provider manages the state of the NotificationsScreen, including the
/// current notificationsModelObj

// ignore_for_file: must_be_immutable
class NotificationsProvider extends ChangeNotifier {NotificationsModel notificationsModelObj = NotificationsModel();

@override void dispose() { super.dispose(); } 
 }
