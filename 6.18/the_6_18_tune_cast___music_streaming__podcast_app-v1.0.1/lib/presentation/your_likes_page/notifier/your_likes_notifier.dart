import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yourlikes_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/your_likes_page/models/your_likes_model.dart';
part 'your_likes_state.dart';

final yourLikesNotifier =
    StateNotifierProvider<YourLikesNotifier, YourLikesState>(
  (ref) => YourLikesNotifier(YourLikesState(
    yourLikesModelObj: YourLikesModel(yourlikesItemList: [
      YourlikesItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      YourlikesItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer),
      YourlikesItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      YourlikesItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer)
    ]),
  )),
);

/// A notifier that manages the state of a YourLikes according to the event that is dispatched to it.
class YourLikesNotifier extends StateNotifier<YourLikesState> {
  YourLikesNotifier(YourLikesState state) : super(state) {}
}
