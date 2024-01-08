import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayoutvertical5_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_upload_media_page/models/posts_upload_media_model.dart';
part 'posts_upload_media_event.dart';
part 'posts_upload_media_state.dart';

/// A bloc that manages the state of a PostsUploadMedia according to the event that is dispatched to it.
class PostsUploadMediaBloc
    extends Bloc<PostsUploadMediaEvent, PostsUploadMediaState> {
  PostsUploadMediaBloc(PostsUploadMediaState initialState)
      : super(initialState) {
    on<PostsUploadMediaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsUploadMediaInitialEvent event,
    Emitter<PostsUploadMediaState> emit,
  ) async {
    emit(state.copyWith(
        postsUploadMediaModelObj: state.postsUploadMediaModelObj?.copyWith(
      autolayoutvertical5ItemList: fillAutolayoutvertical5ItemList(),
    )));
  }

  List<Autolayoutvertical5ItemModel> fillAutolayoutvertical5ItemList() {
    return [
      Autolayoutvertical5ItemModel(
          image: ImageConstant.imgImage121x121,
          checkmark: ImageConstant.imgCheckmarkPrimary),
      Autolayoutvertical5ItemModel(
          image: ImageConstant.imgImage121x120,
          checkmark: ImageConstant.imgContrastPrimary20x20),
      Autolayoutvertical5ItemModel(image: ImageConstant.imgImage57)
    ];
  }
}
