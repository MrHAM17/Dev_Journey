import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/home_alarm_page/models/home_alarm_model.dart';import '../models/homealarm_item_model.dart';/// A provider class for the HomeAlarmPage.
///
/// This provider manages the state of the HomeAlarmPage, including the
/// current homeAlarmModelObj

// ignore_for_file: must_be_immutable
class HomeAlarmProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeAlarmModel homeAlarmModelObj = HomeAlarmModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
