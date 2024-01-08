import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/fortyfive_item_model.dart';import '../models/following_item_model.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/search_result_profile_page/models/search_result_profile_model.dart';part 'search_result_profile_event.dart';part 'search_result_profile_state.dart';/// A bloc that manages the state of a SearchResultProfile according to the event that is dispatched to it.
class SearchResultProfileBloc extends Bloc<SearchResultProfileEvent, SearchResultProfileState> {SearchResultProfileBloc(SearchResultProfileState initialState) : super(initialState) { on<SearchResultProfileInitialEvent>(_onInitialize); }

_onInitialize(SearchResultProfileInitialEvent event, Emitter<SearchResultProfileState> emit, ) async  { emit(state.copyWith(searchResultProfileModelObj: state.searchResultProfileModelObj?.copyWith(fortyfiveItemList: fillFortyfiveItemList(), followingItemList: fillFollowingItemList()))); } 
List<FortyfiveItemModel> fillFortyfiveItemList() { return [FortyfiveItemModel(jennyWilson: ImageConstant.imgImage78, artistName: "Jenny Wilson", followersCounter: "9,489 Followers"), FortyfiveItemModel(jennyWilson: ImageConstant.imgImage79, artistName: "Jenny Foose", followersCounter: "8,811 Followers"), FortyfiveItemModel(jennyWilson: ImageConstant.imgImage80, artistName: "Jenny Hanlin", followersCounter: "3,933 Followers")]; } 
List<FollowingItemModel> fillFollowingItemList() { return List.generate(1, (index) => FollowingItemModel()); } 
 }
