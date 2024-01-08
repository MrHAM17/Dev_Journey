// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'postsaddsounds_item_model.dart';/// This class defines the variables used in the [posts_add_sounds_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PostsAddSoundsModel extends Equatable {PostsAddSoundsModel({this.postsaddsoundsItemList = const []}) {  }

List<PostsaddsoundsItemModel> postsaddsoundsItemList;

PostsAddSoundsModel copyWith({List<PostsaddsoundsItemModel>? postsaddsoundsItemList}) { return PostsAddSoundsModel(
postsaddsoundsItemList : postsaddsoundsItemList ?? this.postsaddsoundsItemList,
); } 
@override List<Object?> get props => [postsaddsoundsItemList];
 }
