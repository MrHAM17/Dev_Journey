import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/notification_activity_screen/models/notification_activity_model.dart';/// A provider class for the NotificationActivityScreen.
///
/// This provider manages the state of the NotificationActivityScreen, including the
/// current notificationActivityModelObj

// ignore_for_file: must_be_immutable
class NotificationActivityProvider extends ChangeNotifier {NotificationActivityModel notificationActivityModelObj = NotificationActivityModel();

@override void dispose() { super.dispose(); } 
 }
