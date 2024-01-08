// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'artists1_item_model.dart';/// This class defines the variables used in the [artists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel extends Equatable {ArtistsModel({this.artists1ItemList = const []}) {  }

List<Artists1ItemModel> artists1ItemList;

ArtistsModel copyWith({List<Artists1ItemModel>? artists1ItemList}) { return ArtistsModel(
artists1ItemList : artists1ItemList ?? this.artists1ItemList,
); } 
@override List<Object?> get props => [artists1ItemList];
 }
