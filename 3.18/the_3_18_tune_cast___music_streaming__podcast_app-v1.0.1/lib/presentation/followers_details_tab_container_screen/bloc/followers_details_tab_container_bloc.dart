import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_tab_container_screen/models/followers_details_tab_container_model.dart';part 'followers_details_tab_container_event.dart';part 'followers_details_tab_container_state.dart';/// A bloc that manages the state of a FollowersDetailsTabContainer according to the event that is dispatched to it.
class FollowersDetailsTabContainerBloc extends Bloc<FollowersDetailsTabContainerEvent, FollowersDetailsTabContainerState> {FollowersDetailsTabContainerBloc(FollowersDetailsTabContainerState initialState) : super(initialState) { on<FollowersDetailsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(FollowersDetailsTabContainerInitialEvent event, Emitter<FollowersDetailsTabContainerState> emit, ) async  {  } 
 }
