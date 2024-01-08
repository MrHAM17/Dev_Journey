// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'followartists_item_model.dart';/// This class defines the variables used in the [follow_artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowArtistsModel extends Equatable {FollowArtistsModel({this.followartistsItemList = const []}) {  }

List<FollowartistsItemModel> followartistsItemList;

FollowArtistsModel copyWith({List<FollowartistsItemModel>? followartistsItemList}) { return FollowArtistsModel(
followartistsItemList : followartistsItemList ?? this.followartistsItemList,
); } 
@override List<Object?> get props => [followartistsItemList];
 }
