import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/walkthrough_two_screen/models/walkthrough_two_model.dart';part 'walkthrough_two_event.dart';part 'walkthrough_two_state.dart';/// A bloc that manages the state of a WalkthroughTwo according to the event that is dispatched to it.
class WalkthroughTwoBloc extends Bloc<WalkthroughTwoEvent, WalkthroughTwoState> {WalkthroughTwoBloc(WalkthroughTwoState initialState) : super(initialState) { on<WalkthroughTwoInitialEvent>(_onInitialize); }

_onInitialize(WalkthroughTwoInitialEvent event, Emitter<WalkthroughTwoState> emit, ) async  {  } 
 }
