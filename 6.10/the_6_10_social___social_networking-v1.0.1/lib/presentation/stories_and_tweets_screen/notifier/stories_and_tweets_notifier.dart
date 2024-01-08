import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/live_item_model.dart';
import '../models/frame1_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
part 'stories_and_tweets_state.dart';

final storiesAndTweetsNotifier =
    StateNotifierProvider<StoriesAndTweetsNotifier, StoriesAndTweetsState>(
        (ref) => StoriesAndTweetsNotifier(StoriesAndTweetsState(
            searchController: TextEditingController(),
            storiesAndTweetsModelObj: StoriesAndTweetsModel(liveItemList: [
              LiveItemModel(save: ImageConstant.imgSave, newPost: "New Post"),
              LiveItemModel(newPost: "Jordan"),
              LiveItemModel(newPost: "Angeline"),
              LiveItemModel(newPost: "Chrystin"),
              LiveItemModel(newPost: "Vrindha")
            ], frame1ItemList: [
              Frame1ItemModel(
                  albertOConnor: "Albert O’connor",
                  duration: "4  hours ago",
                  introduceIAmA:
                      "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.",
                  zipcode: "2200",
                  eightHundred: "800",
                  albertOConnor1: "Albert O’connor",
                  duration1: "4  hours ago",
                  introduceIAmA1:
                      "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.")
            ]))));

/// A notifier that manages the state of a StoriesAndTweets according to the event that is dispatched to it.
class StoriesAndTweetsNotifier extends StateNotifier<StoriesAndTweetsState> {
  StoriesAndTweetsNotifier(StoriesAndTweetsState state) : super(state);
}
