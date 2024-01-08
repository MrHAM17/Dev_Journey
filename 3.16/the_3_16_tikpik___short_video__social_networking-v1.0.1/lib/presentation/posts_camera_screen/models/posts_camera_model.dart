// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'autolayouthorizontal5_item_model.dart';/// This class defines the variables used in the [posts_camera_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PostsCameraModel extends Equatable {PostsCameraModel({this.autolayouthorizontal5ItemList = const []}) {  }

List<Autolayouthorizontal5ItemModel> autolayouthorizontal5ItemList;

PostsCameraModel copyWith({List<Autolayouthorizontal5ItemModel>? autolayouthorizontal5ItemList}) { return PostsCameraModel(
autolayouthorizontal5ItemList : autolayouthorizontal5ItemList ?? this.autolayouthorizontal5ItemList,
); } 
@override List<Object?> get props => [autolayouthorizontal5ItemList];
 }
