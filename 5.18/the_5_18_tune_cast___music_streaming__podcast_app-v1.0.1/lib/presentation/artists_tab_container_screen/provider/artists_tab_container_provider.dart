import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/artists_tab_container_screen/models/artists_tab_container_model.dart';/// A provider class for the ArtistsTabContainerScreen.
///
/// This provider manages the state of the ArtistsTabContainerScreen, including the
/// current artistsTabContainerModelObj

// ignore_for_file: must_be_immutable
class ArtistsTabContainerProvider extends ChangeNotifier {ArtistsTabContainerModel artistsTabContainerModelObj = ArtistsTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
