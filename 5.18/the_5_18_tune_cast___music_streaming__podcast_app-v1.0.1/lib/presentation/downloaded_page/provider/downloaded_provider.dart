import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/downloaded_page/models/downloaded_model.dart';import '../models/downloaded_item_model.dart';/// A provider class for the DownloadedPage.
///
/// This provider manages the state of the DownloadedPage, including the
/// current downloadedModelObj

// ignore_for_file: must_be_immutable
class DownloadedProvider extends ChangeNotifier {DownloadedModel downloadedModelObj = DownloadedModel();

@override void dispose() { super.dispose(); } 
 }
