import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/my_library_page/models/my_library_model.dart';import '../models/frame2_item_model.dart';/// A provider class for the MyLibraryPage.
///
/// This provider manages the state of the MyLibraryPage, including the
/// current myLibraryModelObj

// ignore_for_file: must_be_immutable
class MyLibraryProvider extends ChangeNotifier {MyLibraryModel myLibraryModelObj = MyLibraryModel();

@override void dispose() { super.dispose(); } 
 }
