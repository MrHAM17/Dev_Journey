import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/notification_list_page/models/notification_list_model.dart';import '../models/category_item_model.dart';import '../models/list_item_model.dart';import '../models/samuelella_item_model.dart';/// A provider class for the NotificationListPage.
///
/// This provider manages the state of the NotificationListPage, including the
/// current notificationListModelObj

// ignore_for_file: must_be_immutable
class NotificationListProvider extends ChangeNotifier {NotificationListModel notificationListModelObj = NotificationListModel();

@override void dispose() { super.dispose(); } 
 }
