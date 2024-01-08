import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_templates_screen/models/posts_templates_model.dart';part 'posts_templates_event.dart';part 'posts_templates_state.dart';/// A bloc that manages the state of a PostsTemplates according to the event that is dispatched to it.
class PostsTemplatesBloc extends Bloc<PostsTemplatesEvent, PostsTemplatesState> {PostsTemplatesBloc(PostsTemplatesState initialState) : super(initialState) { on<PostsTemplatesInitialEvent>(_onInitialize); }

_onInitialize(PostsTemplatesInitialEvent event, Emitter<PostsTemplatesState> emit, ) async  {  } 
 }
