// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'podcasters_item_model.dart';/// This class defines the variables used in the [podcasters_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastersModel extends Equatable {PodcastersModel({this.podcastersItemList = const []}) {  }

List<PodcastersItemModel> podcastersItemList;

PodcastersModel copyWith({List<PodcastersItemModel>? podcastersItemList}) { return PodcastersModel(
podcastersItemList : podcastersItemList ?? this.podcastersItemList,
); } 
@override List<Object?> get props => [podcastersItemList];
 }
