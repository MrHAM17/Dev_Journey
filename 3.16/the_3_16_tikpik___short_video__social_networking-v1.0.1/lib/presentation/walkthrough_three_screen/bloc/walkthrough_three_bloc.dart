import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/walkthrough_three_screen/models/walkthrough_three_model.dart';part 'walkthrough_three_event.dart';part 'walkthrough_three_state.dart';/// A bloc that manages the state of a WalkthroughThree according to the event that is dispatched to it.
class WalkthroughThreeBloc extends Bloc<WalkthroughThreeEvent, WalkthroughThreeState> {WalkthroughThreeBloc(WalkthroughThreeState initialState) : super(initialState) { on<WalkthroughThreeInitialEvent>(_onInitialize); }

_onInitialize(WalkthroughThreeInitialEvent event, Emitter<WalkthroughThreeState> emit, ) async  {  } 
 }
