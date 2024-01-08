// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'topalbumsglobal2_item_model.dart';/// This class defines the variables used in the [top_albums_global_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopAlbumsGlobalModel extends Equatable {TopAlbumsGlobalModel({this.topalbumsglobal2ItemList = const []}) {  }

List<Topalbumsglobal2ItemModel> topalbumsglobal2ItemList;

TopAlbumsGlobalModel copyWith({List<Topalbumsglobal2ItemModel>? topalbumsglobal2ItemList}) { return TopAlbumsGlobalModel(
topalbumsglobal2ItemList : topalbumsglobal2ItemList ?? this.topalbumsglobal2ItemList,
); } 
@override List<Object?> get props => [topalbumsglobal2ItemList];
 }
