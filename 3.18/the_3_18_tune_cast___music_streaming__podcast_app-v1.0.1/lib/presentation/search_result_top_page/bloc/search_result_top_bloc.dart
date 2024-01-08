import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/follow_item_model.dart';import '../models/teenagedream_item_model.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/search_result_top_page/models/search_result_top_model.dart';part 'search_result_top_event.dart';part 'search_result_top_state.dart';/// A bloc that manages the state of a SearchResultTop according to the event that is dispatched to it.
class SearchResultTopBloc extends Bloc<SearchResultTopEvent, SearchResultTopState> {SearchResultTopBloc(SearchResultTopState initialState) : super(initialState) { on<SearchResultTopInitialEvent>(_onInitialize); }

_onInitialize(SearchResultTopInitialEvent event, Emitter<SearchResultTopState> emit, ) async  { emit(state.copyWith(searchResultTopModelObj: state.searchResultTopModelObj?.copyWith(followItemList: fillFollowItemList(), teenagedreamItemList: fillTeenagedreamItemList()))); } 
List<FollowItemModel> fillFollowItemList() { return [FollowItemModel(handsome: ImageConstant.imgImage27, songTitle: "HANDSOME", details: "Warren Hue", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, handsome1: ImageConstant.imgCategoriesMore), FollowItemModel(handsome: ImageConstant.imgImage52, songTitle: "Firework Cover", details: "The Sappear", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, handsome1: ImageConstant.imgVectorGray90001)]; } 
List<TeenagedreamItemModel> fillTeenagedreamItemList() { return List.generate(1, (index) => TeenagedreamItemModel()); } 
 }
