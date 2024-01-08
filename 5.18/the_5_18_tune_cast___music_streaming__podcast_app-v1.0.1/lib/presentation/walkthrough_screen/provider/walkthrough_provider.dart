import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/walkthrough_screen/models/walkthrough_model.dart';/// A provider class for the WalkthroughScreen.
///
/// This provider manages the state of the WalkthroughScreen, including the
/// current walkthroughModelObj

// ignore_for_file: must_be_immutable
class WalkthroughProvider extends ChangeNotifier {WalkthroughModel walkthroughModelObj = WalkthroughModel();

@override void dispose() { super.dispose(); } 
 }
