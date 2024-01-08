import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/queue_page/models/queue_model.dart';import '../models/queue_item_model.dart';/// A provider class for the QueuePage.
///
/// This provider manages the state of the QueuePage, including the
/// current queueModelObj

// ignore_for_file: must_be_immutable
class QueueProvider extends ChangeNotifier {QueueModel queueModelObj = QueueModel();

@override void dispose() { super.dispose(); } 
 }
