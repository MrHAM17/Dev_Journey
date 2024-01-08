import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/followers_tab_container_screen/models/followers_tab_container_model.dart';part 'followers_tab_container_event.dart';part 'followers_tab_container_state.dart';/// A bloc that manages the state of a FollowersTabContainer according to the event that is dispatched to it.
class FollowersTabContainerBloc extends Bloc<FollowersTabContainerEvent, FollowersTabContainerState> {FollowersTabContainerBloc(FollowersTabContainerState initialState) : super(initialState) { on<FollowersTabContainerInitialEvent>(_onInitialize); }

_onInitialize(FollowersTabContainerInitialEvent event, Emitter<FollowersTabContainerState> emit, ) async  {  } 
 }
