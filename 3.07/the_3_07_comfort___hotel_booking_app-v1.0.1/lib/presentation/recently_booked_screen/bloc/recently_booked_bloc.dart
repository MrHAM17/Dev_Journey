import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/recentlybooked_item_model.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/recently_booked_screen/models/recently_booked_model.dart';part 'recently_booked_event.dart';part 'recently_booked_state.dart';/// A bloc that manages the state of a RecentlyBooked according to the event that is dispatched to it.
class RecentlyBookedBloc extends Bloc<RecentlyBookedEvent, RecentlyBookedState> {RecentlyBookedBloc(RecentlyBookedState initialState) : super(initialState) { on<RecentlyBookedInitialEvent>(_onInitialize); }

_onInitialize(RecentlyBookedInitialEvent event, Emitter<RecentlyBookedState> emit, ) async  { emit(state.copyWith(recentlyBookedModelObj: state.recentlyBookedModelObj?.copyWith(recentlybookedItemList: fillRecentlybookedItemList()))); } 
List<RecentlybookedItemModel> fillRecentlybookedItemList() { return [RecentlybookedItemModel(martinezCannes: ImageConstant.imgRectangle4, presidentHotel: "Martinez Cannes", parisFrance: "Paris, France", fortyEight: "4.8", reviews: "(4,378 reviews)", price: "32", night: "/ night")]; } 
 }
