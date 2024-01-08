import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/walkthrough_one_screen/models/walkthrough_one_model.dart';part 'walkthrough_one_event.dart';part 'walkthrough_one_state.dart';/// A bloc that manages the state of a WalkthroughOne according to the event that is dispatched to it.
class WalkthroughOneBloc extends Bloc<WalkthroughOneEvent, WalkthroughOneState> {WalkthroughOneBloc(WalkthroughOneState initialState) : super(initialState) { on<WalkthroughOneInitialEvent>(_onInitialize); }

_onInitialize(WalkthroughOneInitialEvent event, Emitter<WalkthroughOneState> emit, ) async  {  } 
 }
