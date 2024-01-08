import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/tickets1_item_model.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/booking_ongoing_screen/models/booking_ongoing_model.dart';part 'booking_ongoing_event.dart';part 'booking_ongoing_state.dart';/// A bloc that manages the state of a BookingOngoing according to the event that is dispatched to it.
class BookingOngoingBloc extends Bloc<BookingOngoingEvent, BookingOngoingState> {BookingOngoingBloc(BookingOngoingState initialState) : super(initialState) { on<BookingOngoingInitialEvent>(_onInitialize); }

_onInitialize(BookingOngoingInitialEvent event, Emitter<BookingOngoingState> emit, ) async  { emit(state.copyWith(bookingOngoingModelObj: state.bookingOngoingModelObj?.copyWith(tickets1ItemList: fillTickets1ItemList()))); } 
List<Tickets1ItemModel> fillTickets1ItemList() { return [Tickets1ItemModel(royalePresident: "Royale President Hotel", image: ImageConstant.imgRectangle, parisFrance: "Paris, France")]; } 
 }
