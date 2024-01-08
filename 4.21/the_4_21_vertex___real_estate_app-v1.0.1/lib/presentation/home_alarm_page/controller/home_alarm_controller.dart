import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/home_alarm_page/models/home_alarm_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeAlarmPage.
///
/// This class manages the state of the HomeAlarmPage, including the
/// current homeAlarmModelObj
class HomeAlarmController extends GetxController {HomeAlarmController(this.homeAlarmModelObj);

TextEditingController searchController = TextEditingController();

Rx<HomeAlarmModel> homeAlarmModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
