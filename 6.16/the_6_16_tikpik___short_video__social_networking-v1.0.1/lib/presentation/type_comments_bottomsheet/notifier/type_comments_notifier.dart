import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/typecomments_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/type_comments_bottomsheet/models/type_comments_model.dart';
part 'type_comments_state.dart';

final typeCommentsNotifier =
    StateNotifierProvider<TypeCommentsNotifier, TypeCommentsState>(
  (ref) => TypeCommentsNotifier(TypeCommentsState(
    categoriesGiftComponentAdditioController: TextEditingController(),
    typeCommentsModelObj: TypeCommentsModel(typecommentsItemList: [
      TypecommentsItemModel(
          adipiscingElit:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
          kristinWatson: "Kristin Watson",
          image: ImageConstant.imgIconlyBoldHeart,
          text: "938",
          duration: "3 days ago",
          reply: "Reply"),
      TypecommentsItemModel(
          adipiscingElit:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
          kristinWatson: "Ralph Edwards",
          image: ImageConstant.imgFavorite,
          text: "847",
          duration: "2 days ago",
          reply: "Reply"),
      TypecommentsItemModel(
          adipiscingElit:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
          kristinWatson: "Kathryn Murphy",
          image: ImageConstant.imgIconlyBoldHeart,
          text: "534",
          duration: "4 days ago",
          reply: "Reply")
    ]),
  )),
);

/// A notifier that manages the state of a TypeComments according to the event that is dispatched to it.
class TypeCommentsNotifier extends StateNotifier<TypeCommentsState> {
  TypeCommentsNotifier(TypeCommentsState state) : super(state) {}
}
