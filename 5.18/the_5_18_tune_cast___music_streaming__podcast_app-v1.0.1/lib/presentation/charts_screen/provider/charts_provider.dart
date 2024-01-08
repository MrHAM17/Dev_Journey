import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/charts_screen/models/charts_model.dart';import '../models/topalbumsglobal_item_model.dart';import '../models/topalbumsglobal1_item_model.dart';/// A provider class for the ChartsScreen.
///
/// This provider manages the state of the ChartsScreen, including the
/// current chartsModelObj

// ignore_for_file: must_be_immutable
class ChartsProvider extends ChangeNotifier {ChartsModel chartsModelObj = ChartsModel();

@override void dispose() { super.dispose(); } 
 }
