import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/top_agents_screen/models/top_agents_model.dart';import '../models/datalist1_item_model.dart';/// A provider class for the TopAgentsScreen.
///
/// This provider manages the state of the TopAgentsScreen, including the
/// current topAgentsModelObj

// ignore_for_file: must_be_immutable
class TopAgentsProvider extends ChangeNotifier {TopAgentsModel topAgentsModelObj = TopAgentsModel();

@override void dispose() { super.dispose(); } 
 }
