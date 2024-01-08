import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/my_bookmarks_screen/models/my_bookmarks_model.dart';import '../models/mybookmarks_item_model.dart';/// A provider class for the MyBookmarksScreen.
///
/// This provider manages the state of the MyBookmarksScreen, including the
/// current myBookmarksModelObj

// ignore_for_file: must_be_immutable
class MyBookmarksProvider extends ChangeNotifier {MyBookmarksModel myBookmarksModelObj = MyBookmarksModel();

@override void dispose() { super.dispose(); } 
 }
