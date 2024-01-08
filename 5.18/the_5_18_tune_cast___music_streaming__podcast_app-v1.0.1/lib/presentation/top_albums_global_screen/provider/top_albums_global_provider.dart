import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/top_albums_global_screen/models/top_albums_global_model.dart';import '../models/topalbumsglobal2_item_model.dart';/// A provider class for the TopAlbumsGlobalScreen.
///
/// This provider manages the state of the TopAlbumsGlobalScreen, including the
/// current topAlbumsGlobalModelObj

// ignore_for_file: must_be_immutable
class TopAlbumsGlobalProvider extends ChangeNotifier {TopAlbumsGlobalModel topAlbumsGlobalModelObj = TopAlbumsGlobalModel();

@override void dispose() { super.dispose(); } 
 }
