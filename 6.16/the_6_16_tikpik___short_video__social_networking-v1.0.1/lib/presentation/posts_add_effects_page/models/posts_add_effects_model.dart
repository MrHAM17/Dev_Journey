// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'postsaddeffects_item_model.dart';/// This class defines the variables used in the [posts_add_effects_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PostsAddEffectsModel extends Equatable {PostsAddEffectsModel({this.postsaddeffectsItemList = const []}) {  }

List<PostsaddeffectsItemModel> postsaddeffectsItemList;

PostsAddEffectsModel copyWith({List<PostsaddeffectsItemModel>? postsaddeffectsItemList}) { return PostsAddEffectsModel(
postsaddeffectsItemList : postsaddeffectsItemList ?? this.postsaddeffectsItemList,
); } 
@override List<Object?> get props => [postsaddeffectsItemList];
 }
