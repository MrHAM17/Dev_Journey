import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/top_agents_profile_detail_page/models/top_agents_profile_detail_model.dart';import '../models/topagentsprofiledetail_item_model.dart';/// A provider class for the TopAgentsProfileDetailPage.
///
/// This provider manages the state of the TopAgentsProfileDetailPage, including the
/// current topAgentsProfileDetailModelObj

// ignore_for_file: must_be_immutable
class TopAgentsProfileDetailProvider extends ChangeNotifier {TopAgentsProfileDetailModel topAgentsProfileDetailModelObj = TopAgentsProfileDetailModel();

@override void dispose() { super.dispose(); } 
 }
