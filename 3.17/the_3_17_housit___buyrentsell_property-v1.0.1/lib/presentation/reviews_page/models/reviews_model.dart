// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'layout26_item_model.dart';/// This class defines the variables used in the [reviews_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewsModel extends Equatable {ReviewsModel({this.layout26ItemList = const []}) {  }

List<Layout26ItemModel> layout26ItemList;

ReviewsModel copyWith({List<Layout26ItemModel>? layout26ItemList}) { return ReviewsModel(
layout26ItemList : layout26ItemList ?? this.layout26ItemList,
); } 
@override List<Object?> get props => [layout26ItemList];
 }
