import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interestspeople_item_model.dart';
import 'package:the_6_05_blog_app/presentation/interests_people_page/models/interests_people_model.dart';
part 'interests_people_state.dart';

final interestsPeopleNotifier =
    StateNotifierProvider<InterestsPeopleNotifier, InterestsPeopleState>(
  (ref) => InterestsPeopleNotifier(InterestsPeopleState(
    interestsPeopleModelObj: InterestsPeopleModel(interestspeopleItemList: [
      InterestspeopleItemModel(morePeopleToFollow: "MORE PEOPLE TO FOLLOW")
    ]),
  )),
);

/// A notifier that manages the state of a InterestsPeople according to the event that is dispatched to it.
class InterestsPeopleNotifier extends StateNotifier<InterestsPeopleState> {
  InterestsPeopleNotifier(InterestsPeopleState state) : super(state) {}
}
