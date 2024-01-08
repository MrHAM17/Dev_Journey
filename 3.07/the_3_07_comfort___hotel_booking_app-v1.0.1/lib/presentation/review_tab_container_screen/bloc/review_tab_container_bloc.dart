import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/review_tab_container_screen/models/review_tab_container_model.dart';part 'review_tab_container_event.dart';part 'review_tab_container_state.dart';/// A bloc that manages the state of a ReviewTabContainer according to the event that is dispatched to it.
class ReviewTabContainerBloc extends Bloc<ReviewTabContainerEvent, ReviewTabContainerState> {ReviewTabContainerBloc(ReviewTabContainerState initialState) : super(initialState) { on<ReviewTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ReviewTabContainerInitialEvent event, Emitter<ReviewTabContainerState> emit, ) async  {  } 
 }
