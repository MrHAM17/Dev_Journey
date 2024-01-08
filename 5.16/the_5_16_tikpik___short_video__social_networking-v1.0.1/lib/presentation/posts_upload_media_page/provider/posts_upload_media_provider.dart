import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_upload_media_page/models/posts_upload_media_model.dart';import '../models/autolayoutvertical5_item_model.dart';/// A provider class for the PostsUploadMediaPage.
///
/// This provider manages the state of the PostsUploadMediaPage, including the
/// current postsUploadMediaModelObj

// ignore_for_file: must_be_immutable
class PostsUploadMediaProvider extends ChangeNotifier {PostsUploadMediaModel postsUploadMediaModelObj = PostsUploadMediaModel();

@override void dispose() { super.dispose(); } 
 }
