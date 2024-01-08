// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'playlistdetailsone_item_model.dart';/// This class defines the variables used in the [playlist_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistDetailsOneModel extends Equatable {PlaylistDetailsOneModel({this.playlistdetailsoneItemList = const []}) {  }

List<PlaylistdetailsoneItemModel> playlistdetailsoneItemList;

PlaylistDetailsOneModel copyWith({List<PlaylistdetailsoneItemModel>? playlistdetailsoneItemList}) { return PlaylistDetailsOneModel(
playlistdetailsoneItemList : playlistdetailsoneItemList ?? this.playlistdetailsoneItemList,
); } 
@override List<Object?> get props => [playlistdetailsoneItemList];
 }
