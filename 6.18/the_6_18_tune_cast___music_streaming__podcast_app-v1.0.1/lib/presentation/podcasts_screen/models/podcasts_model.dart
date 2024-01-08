// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'frame_item_model.dart';import 'artists_item_model.dart';import 'podcasts_item_model.dart';/// This class defines the variables used in the [podcasts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastsModel extends Equatable {PodcastsModel({this.frameItemList = const [], this.artistsItemList = const [], this.podcastsItemList = const [], }) {  }

List<FrameItemModel> frameItemList;

List<ArtistsItemModel> artistsItemList;

List<PodcastsItemModel> podcastsItemList;

PodcastsModel copyWith({List<FrameItemModel>? frameItemList, List<ArtistsItemModel>? artistsItemList, List<PodcastsItemModel>? podcastsItemList, }) { return PodcastsModel(
frameItemList : frameItemList ?? this.frameItemList,
artistsItemList : artistsItemList ?? this.artistsItemList,
podcastsItemList : podcastsItemList ?? this.podcastsItemList,
); } 
@override List<Object?> get props => [frameItemList,artistsItemList,podcastsItemList];
 }
