import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:table_calendar/table_calendar.dart';import '../models/time1_item_model.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/pick_date_screen/models/pick_date_model.dart';part 'pick_date_event.dart';part 'pick_date_state.dart';/// A bloc that manages the state of a PickDate according to the event that is dispatched to it.
class PickDateBloc extends Bloc<PickDateEvent, PickDateState> {PickDateBloc(PickDateState initialState) : super(initialState) { on<PickDateInitialEvent>(_onInitialize); }

List<Time1ItemModel> fillTime1ItemList() { return [Time1ItemModel(time: "9:00 AM"), Time1ItemModel(time: "9:30 AM"), Time1ItemModel(time: "10:00 AM"), Time1ItemModel(time: "10:30 AM")]; } 
_onInitialize(PickDateInitialEvent event, Emitter<PickDateState> emit, ) async  { emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn)); emit(state.copyWith(pickDateModelObj: state.pickDateModelObj?.copyWith(time1ItemList: fillTime1ItemList()))); } 
 }
