// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'episode_item_model.dart';

/// This class defines the variables used in the [episode_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EpisodeModel extends Equatable {
  EpisodeModel({this.episodeItemList = const []}) {}

  List<EpisodeItemModel> episodeItemList;

  EpisodeModel copyWith({List<EpisodeItemModel>? episodeItemList}) {
    return EpisodeModel(
      episodeItemList: episodeItemList ?? this.episodeItemList,
    );
  }

  @override
  List<Object?> get props => [episodeItemList];
}
