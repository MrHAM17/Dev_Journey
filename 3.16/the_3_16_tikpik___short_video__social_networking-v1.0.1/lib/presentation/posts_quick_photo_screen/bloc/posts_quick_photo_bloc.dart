import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_quick_photo_screen/models/posts_quick_photo_model.dart';part 'posts_quick_photo_event.dart';part 'posts_quick_photo_state.dart';/// A bloc that manages the state of a PostsQuickPhoto according to the event that is dispatched to it.
class PostsQuickPhotoBloc extends Bloc<PostsQuickPhotoEvent, PostsQuickPhotoState> {PostsQuickPhotoBloc(PostsQuickPhotoState initialState) : super(initialState) { on<PostsQuickPhotoInitialEvent>(_onInitialize); }

_onInitialize(PostsQuickPhotoInitialEvent event, Emitter<PostsQuickPhotoState> emit, ) async  {  } 
 }