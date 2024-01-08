import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/new_releases_screen/models/new_releases_model.dart';import '../models/newreleases_item_model.dart';/// A provider class for the NewReleasesScreen.
///
/// This provider manages the state of the NewReleasesScreen, including the
/// current newReleasesModelObj

// ignore_for_file: must_be_immutable
class NewReleasesProvider extends ChangeNotifier {NewReleasesModel newReleasesModelObj = NewReleasesModel();

@override void dispose() { super.dispose(); } 
 }
