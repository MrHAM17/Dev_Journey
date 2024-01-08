import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/mybookmarks_item_model.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/my_bookmarks_screen/models/my_bookmarks_model.dart';part 'my_bookmarks_event.dart';part 'my_bookmarks_state.dart';/// A bloc that manages the state of a MyBookmarks according to the event that is dispatched to it.
class MyBookmarksBloc extends Bloc<MyBookmarksEvent, MyBookmarksState> {MyBookmarksBloc(MyBookmarksState initialState) : super(initialState) { on<MyBookmarksInitialEvent>(_onInitialize); }

_onInitialize(MyBookmarksInitialEvent event, Emitter<MyBookmarksState> emit, ) async  { emit(state.copyWith(myBookmarksModelObj: state.myBookmarksModelObj?.copyWith(mybookmarksItemList: fillMybookmarksItemList()))); } 
List<MybookmarksItemModel> fillMybookmarksItemList() { return [MybookmarksItemModel(image: ImageConstant.imgRectangle4100x100, presidentMilaDe: "De Paris Monte-Carlo Hotel", fortyEight: "4.6", parisFrance: "Paris, France", price: "29", night: "/ night"), MybookmarksItemModel(image: ImageConstant.imgRectangle41, presidentMilaDe: "Faena Hotel Miami Beach", fortyEight: "4.9", parisFrance: "Paris, France", price: "38", night: "/ night"), MybookmarksItemModel(image: ImageConstant.imgRectangle42, presidentMilaDe: "Palazzo Versace\nPico Hotel", fortyEight: "4.7", parisFrance: "Paris, France", price: "36", night: "/ night")]; } 
 }
