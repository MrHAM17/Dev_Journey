import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_tab_container_screen/models/posts_add_sounds_tab_container_model.dart';part 'posts_add_sounds_tab_container_event.dart';part 'posts_add_sounds_tab_container_state.dart';/// A bloc that manages the state of a PostsAddSoundsTabContainer according to the event that is dispatched to it.
class PostsAddSoundsTabContainerBloc extends Bloc<PostsAddSoundsTabContainerEvent, PostsAddSoundsTabContainerState> {PostsAddSoundsTabContainerBloc(PostsAddSoundsTabContainerState initialState) : super(initialState) { on<PostsAddSoundsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(PostsAddSoundsTabContainerInitialEvent event, Emitter<PostsAddSoundsTabContainerState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
