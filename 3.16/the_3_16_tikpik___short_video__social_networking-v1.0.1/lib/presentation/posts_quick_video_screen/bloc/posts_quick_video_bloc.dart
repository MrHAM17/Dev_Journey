import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_quick_video_screen/models/posts_quick_video_model.dart';part 'posts_quick_video_event.dart';part 'posts_quick_video_state.dart';/// A bloc that manages the state of a PostsQuickVideo according to the event that is dispatched to it.
class PostsQuickVideoBloc extends Bloc<PostsQuickVideoEvent, PostsQuickVideoState> {PostsQuickVideoBloc(PostsQuickVideoState initialState) : super(initialState) { on<PostsQuickVideoInitialEvent>(_onInitialize); }

_onInitialize(PostsQuickVideoInitialEvent event, Emitter<PostsQuickVideoState> emit, ) async  {  } 
 }
