import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_edit_page_screen/models/posts_edit_page_model.dart';part 'posts_edit_page_event.dart';part 'posts_edit_page_state.dart';/// A bloc that manages the state of a PostsEditPage according to the event that is dispatched to it.
class PostsEditPageBloc extends Bloc<PostsEditPageEvent, PostsEditPageState> {PostsEditPageBloc(PostsEditPageState initialState) : super(initialState) { on<PostsEditPageInitialEvent>(_onInitialize); }

_onInitialize(PostsEditPageInitialEvent event, Emitter<PostsEditPageState> emit, ) async  {  } 
 }
