import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/add_new_property_meet_with_a_agent_screen/models/add_new_property_meet_with_a_agent_model.dart';import 'package:table_calendar/table_calendar.dart';import '../models/time_item_model.dart';/// A provider class for the AddNewPropertyMeetWithAAgentScreen.
///
/// This provider manages the state of the AddNewPropertyMeetWithAAgentScreen, including the
/// current addNewPropertyMeetWithAAgentModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyMeetWithAAgentProvider extends ChangeNotifier {AddNewPropertyMeetWithAAgentModel addNewPropertyMeetWithAAgentModelObj = AddNewPropertyMeetWithAAgentModel();

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime? focusedDay;

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override void dispose() { super.dispose(); } 
 }
