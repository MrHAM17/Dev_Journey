import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/downloads_screen/models/downloads_model.dart';import '../models/downloads_item_model.dart';/// A provider class for the DownloadsScreen.
///
/// This provider manages the state of the DownloadsScreen, including the
/// current downloadsModelObj

// ignore_for_file: must_be_immutable
class DownloadsProvider extends ChangeNotifier {DownloadsModel downloadsModelObj = DownloadsModel();

@override void dispose() { super.dispose(); } 
 }
