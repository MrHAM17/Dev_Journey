import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/profile_tab_container_screen/models/profile_tab_container_model.dart';part 'profile_tab_container_event.dart';part 'profile_tab_container_state.dart';/// A bloc that manages the state of a ProfileTabContainer according to the event that is dispatched to it.
class ProfileTabContainerBloc extends Bloc<ProfileTabContainerEvent, ProfileTabContainerState> {ProfileTabContainerBloc(ProfileTabContainerState initialState) : super(initialState) { on<ProfileTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ProfileTabContainerInitialEvent event, Emitter<ProfileTabContainerState> emit, ) async  {  } 
 }
