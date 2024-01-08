import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/topalbumsglobal_item_model.dart';import '../models/topalbumsglobal1_item_model.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/charts_screen/models/charts_model.dart';part 'charts_event.dart';part 'charts_state.dart';/// A bloc that manages the state of a Charts according to the event that is dispatched to it.
class ChartsBloc extends Bloc<ChartsEvent, ChartsState> {ChartsBloc(ChartsState initialState) : super(initialState) { on<ChartsInitialEvent>(_onInitialize); }

_onInitialize(ChartsInitialEvent event, Emitter<ChartsState> emit, ) async  { emit(state.copyWith(chartsModelObj: state.chartsModelObj?.copyWith(topalbumsglobalItemList: fillTopalbumsglobalItemList(), topalbumsglobal1ItemList: fillTopalbumsglobal1ItemList()))); } 
List<TopalbumsglobalItemModel> fillTopalbumsglobalItemList() { return [TopalbumsglobalItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums Global"), TopalbumsglobalItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums United..")]; } 
List<Topalbumsglobal1ItemModel> fillTopalbumsglobal1ItemList() { return [Topalbumsglobal1ItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums Global"), Topalbumsglobal1ItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums United..")]; } 
 }