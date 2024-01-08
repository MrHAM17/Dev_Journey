// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayoutvertical5_item_model.dart';/// This class defines the variables used in the [posts_upload_media_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PostsUploadMediaModel extends Equatable {PostsUploadMediaModel({this.autolayoutvertical5ItemList = const []}) {  }

List<Autolayoutvertical5ItemModel> autolayoutvertical5ItemList;

PostsUploadMediaModel copyWith({List<Autolayoutvertical5ItemModel>? autolayoutvertical5ItemList}) { return PostsUploadMediaModel(
autolayoutvertical5ItemList : autolayoutvertical5ItemList ?? this.autolayoutvertical5ItemList,
); } 
@override List<Object?> get props => [autolayoutvertical5ItemList];
 }
