import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/sound_used_screen/models/sound_used_model.dart';import '../models/soundused_item_model.dart';/// A provider class for the SoundUsedScreen.
///
/// This provider manages the state of the SoundUsedScreen, including the
/// current soundUsedModelObj

// ignore_for_file: must_be_immutable
class SoundUsedProvider extends ChangeNotifier {SoundUsedModel soundUsedModelObj = SoundUsedModel();

@override void dispose() { super.dispose(); } 
 }
