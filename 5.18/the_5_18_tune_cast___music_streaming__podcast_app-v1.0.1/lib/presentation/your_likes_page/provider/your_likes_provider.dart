import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/your_likes_page/models/your_likes_model.dart';import '../models/yourlikes_item_model.dart';/// A provider class for the YourLikesPage.
///
/// This provider manages the state of the YourLikesPage, including the
/// current yourLikesModelObj

// ignore_for_file: must_be_immutable
class YourLikesProvider extends ChangeNotifier {YourLikesModel yourLikesModelObj = YourLikesModel();

@override void dispose() { super.dispose(); } 
 }
