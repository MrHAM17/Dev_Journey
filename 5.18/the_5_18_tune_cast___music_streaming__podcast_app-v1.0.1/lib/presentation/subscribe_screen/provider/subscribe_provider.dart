import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/subscribe_screen/models/subscribe_model.dart';import '../models/subscribe_item_model.dart';/// A provider class for the SubscribeScreen.
///
/// This provider manages the state of the SubscribeScreen, including the
/// current subscribeModelObj

// ignore_for_file: must_be_immutable
class SubscribeProvider extends ChangeNotifier {SubscribeModel subscribeModelObj = SubscribeModel();

@override void dispose() { super.dispose(); } 
 }
