import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/about_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/about_page/models/about_model.dart';
part 'about_state.dart';

final aboutNotifier = StateNotifierProvider<AboutNotifier, AboutState>(
    (ref) => AboutNotifier(AboutState(
            aboutModelObj: AboutModel(aboutItemList: [
          AboutItemModel(
              menaMassoud: ImageConstant.imgRectangle12050,
              menaMassoud1: "Mena Massoud"),
          AboutItemModel(
              menaMassoud: ImageConstant.imgRectangle12050127x104,
              menaMassoud1: "Naomi Scott"),
          AboutItemModel(
              menaMassoud: ImageConstant.imgRectangle120501,
              menaMassoud1: "Will Smith"),
          AboutItemModel(
              menaMassoud: ImageConstant.imgRectangle120502,
              menaMassoud1: "Mena Massoud")
        ]))));

/// A notifier that manages the state of a About according to the event that is dispatched to it.
class AboutNotifier extends StateNotifier<AboutState> {
  AboutNotifier(AboutState state) : super(state);
}
