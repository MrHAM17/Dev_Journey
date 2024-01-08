import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayoutvertical5_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_upload_media_page/models/posts_upload_media_model.dart';
part 'posts_upload_media_state.dart';

final postsUploadMediaNotifier =
    StateNotifierProvider<PostsUploadMediaNotifier, PostsUploadMediaState>(
  (ref) => PostsUploadMediaNotifier(PostsUploadMediaState(
    postsUploadMediaModelObj:
        PostsUploadMediaModel(autolayoutvertical5ItemList: [
      Autolayoutvertical5ItemModel(
          image: ImageConstant.imgImage121x121,
          checkmark: ImageConstant.imgCheckmarkPrimary),
      Autolayoutvertical5ItemModel(
          image: ImageConstant.imgImage121x120,
          checkmark: ImageConstant.imgContrastPrimary20x20),
      Autolayoutvertical5ItemModel(image: ImageConstant.imgImage57)
    ]),
  )),
);

/// A notifier that manages the state of a PostsUploadMedia according to the event that is dispatched to it.
class PostsUploadMediaNotifier extends StateNotifier<PostsUploadMediaState> {
  PostsUploadMediaNotifier(PostsUploadMediaState state) : super(state) {}
}
