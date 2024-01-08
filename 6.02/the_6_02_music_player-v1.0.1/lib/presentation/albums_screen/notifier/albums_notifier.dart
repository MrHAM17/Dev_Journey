import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/albums_item_model.dart';
import 'package:the_6_02_music_player/presentation/albums_screen/models/albums_model.dart';
part 'albums_state.dart';

final albumsNotifier = StateNotifierProvider<AlbumsNotifier, AlbumsState>(
    (ref) => AlbumsNotifier(AlbumsState(
            albumsModelObj: AlbumsModel(albumsItemList: [
          AlbumsItemModel(
              flowerPower: ImageConstant.imgThumbnail78x78,
              flowerPower1: "Flower Power",
              rayCharles: "Ray Charles",
              zipcode: "2018"),
          AlbumsItemModel(
              flowerPower: ImageConstant.imgThumbnail1,
              flowerPower1: "This Is Not A Test",
              rayCharles: "Ray Charles",
              zipcode: "2018"),
          AlbumsItemModel(
              flowerPower: ImageConstant.imgThumbnail2,
              flowerPower1: "SHE IS COMING",
              rayCharles: "Ray Charles",
              zipcode: "2018"),
          AlbumsItemModel(
              flowerPower: ImageConstant.imgThumbnail3,
              flowerPower1: "Danheim",
              rayCharles: "Ray Charles",
              zipcode: "2018"),
          AlbumsItemModel(
              flowerPower: ImageConstant.imgThumbnail4,
              flowerPower1: "Wunder King",
              rayCharles: "Элджей",
              zipcode: "2018"),
          AlbumsItemModel(
              flowerPower: ImageConstant.imgThumbnail5,
              flowerPower1: "VELVET: Side A",
              rayCharles: "Adam Lambert",
              zipcode: "2018")
        ]))));

/// A notifier that manages the state of a Albums according to the event that is dispatched to it.
class AlbumsNotifier extends StateNotifier<AlbumsState> {
  AlbumsNotifier(AlbumsState state) : super(state);
}
