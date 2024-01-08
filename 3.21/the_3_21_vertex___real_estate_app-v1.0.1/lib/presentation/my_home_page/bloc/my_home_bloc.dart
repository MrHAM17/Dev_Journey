import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/list_item_model.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/my_home_page/models/my_home_model.dart';part 'my_home_event.dart';part 'my_home_state.dart';/// A bloc that manages the state of a MyHome according to the event that is dispatched to it.
class MyHomeBloc extends Bloc<MyHomeEvent, MyHomeState> {MyHomeBloc(MyHomeState initialState) : super(initialState) { on<MyHomeInitialEvent>(_onInitialize); }

_onInitialize(MyHomeInitialEvent event, Emitter<MyHomeState> emit, ) async  { emit(state.copyWith(myHomeModelObj: state.myHomeModelObj?.copyWith(listItemList: fillListItemList()))); } 
List<ListItemModel> fillListItemList() { return [ListItemModel(primaryApartment: "Primary Apartment", three: "3", two: "2", price: "1,600 - 1,800 "), ListItemModel(primaryApartment: "Primary Apartment", price: "1,600 - 1,800 "), ListItemModel(primaryApartment: "Primary Apartment", price: "1,600 - 1,800 ")]; } 
 }
