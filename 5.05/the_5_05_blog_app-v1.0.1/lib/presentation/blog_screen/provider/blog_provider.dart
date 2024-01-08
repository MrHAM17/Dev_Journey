import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/blog_screen/models/blog_model.dart';

/// A provider class for the BlogScreen.
///
/// This provider manages the state of the BlogScreen, including the
/// current blogModelObj
class BlogProvider extends ChangeNotifier {
  BlogModel blogModelObj = BlogModel();

  @override
  void dispose() {
    super.dispose();
  }
}
