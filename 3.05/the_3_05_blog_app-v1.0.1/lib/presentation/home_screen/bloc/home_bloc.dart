import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framethirtysix_item_model.dart';
import '../models/stories_item_model.dart';
import 'package:the_3_05_blog_app/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            framethirtysixItemList: fillFramethirtysixItemList(),
            storiesItemList: fillStoriesItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.signInScreen,
      );
    });
  }

  List<FramethirtysixItemModel> fillFramethirtysixItemList() {
    return [
      FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
      FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
      FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
      FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor")
    ];
  }

  List<StoriesItemModel> fillStoriesItemList() {
    return [
      StoriesItemModel(
          home: "LOGO",
          easyToUse: "Lorem Ipsum dolor set amet",
          duration: "16 days ago",
          time: "3 min read"),
      StoriesItemModel(
          home: "LOGO",
          easyToUse: "Lorem Ipsum dolor set amet",
          duration: "16 days ago",
          time: "3 min read"),
      StoriesItemModel(
          home: "LOGO",
          easyToUse: "Lorem Ipsum dolor set amet",
          duration: "16 days ago",
          time: "3 min read")
    ];
  }
}
