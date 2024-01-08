import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interestspeople_item_model.dart';
import 'package:the_3_05_blog_app/presentation/interests_people_page/models/interests_people_model.dart';
part 'interests_people_event.dart';
part 'interests_people_state.dart';

/// A bloc that manages the state of a InterestsPeople according to the event that is dispatched to it.
class InterestsPeopleBloc
    extends Bloc<InterestsPeopleEvent, InterestsPeopleState> {
  InterestsPeopleBloc(InterestsPeopleState initialState) : super(initialState) {
    on<InterestsPeopleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InterestsPeopleInitialEvent event,
    Emitter<InterestsPeopleState> emit,
  ) async {
    emit(state.copyWith(
        interestsPeopleModelObj: state.interestsPeopleModelObj?.copyWith(
      interestspeopleItemList: fillInterestspeopleItemList(),
    )));
  }

  List<InterestspeopleItemModel> fillInterestspeopleItemList() {
    return [
      InterestspeopleItemModel(morePeopleToFollow: "MORE PEOPLE TO FOLLOW")
    ];
  }
}
