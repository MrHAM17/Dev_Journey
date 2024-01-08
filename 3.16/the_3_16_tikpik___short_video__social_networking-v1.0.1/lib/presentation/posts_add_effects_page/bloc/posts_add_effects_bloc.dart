import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/postsaddeffects_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_add_effects_page/models/posts_add_effects_model.dart';
part 'posts_add_effects_event.dart';
part 'posts_add_effects_state.dart';

/// A bloc that manages the state of a PostsAddEffects according to the event that is dispatched to it.
class PostsAddEffectsBloc
    extends Bloc<PostsAddEffectsEvent, PostsAddEffectsState> {
  PostsAddEffectsBloc(PostsAddEffectsState initialState) : super(initialState) {
    on<PostsAddEffectsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsAddEffectsInitialEvent event,
    Emitter<PostsAddEffectsState> emit,
  ) async {
    emit(state.copyWith(
        postsAddEffectsModelObj: state.postsAddEffectsModelObj?.copyWith(
      postsaddeffectsItemList: fillPostsaddeffectsItemList(),
    )));
  }

  List<PostsaddeffectsItemModel> fillPostsaddeffectsItemList() {
    return [
      PostsaddeffectsItemModel(
          image: ImageConstant.imgImage45,
          image1: ImageConstant.imgImage46,
          image2: ImageConstant.imgImage47,
          image3: ImageConstant.imgImage48,
          image4: ImageConstant.imgImage49,
          image5: ImageConstant.imgImage50)
    ];
  }
}
