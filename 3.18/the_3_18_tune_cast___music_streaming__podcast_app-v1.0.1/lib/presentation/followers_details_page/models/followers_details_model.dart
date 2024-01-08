// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'ninetyfive_item_model.dart';import 'following1_item_model.dart';/// This class defines the variables used in the [followers_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowersDetailsModel extends Equatable {FollowersDetailsModel({this.ninetyfiveItemList = const [], this.following1ItemList = const [], }) {  }

List<NinetyfiveItemModel> ninetyfiveItemList;

List<Following1ItemModel> following1ItemList;

FollowersDetailsModel copyWith({List<NinetyfiveItemModel>? ninetyfiveItemList, List<Following1ItemModel>? following1ItemList, }) { return FollowersDetailsModel(
ninetyfiveItemList : ninetyfiveItemList ?? this.ninetyfiveItemList,
following1ItemList : following1ItemList ?? this.following1ItemList,
); } 
@override List<Object?> get props => [ninetyfiveItemList,following1ItemList];
 }
