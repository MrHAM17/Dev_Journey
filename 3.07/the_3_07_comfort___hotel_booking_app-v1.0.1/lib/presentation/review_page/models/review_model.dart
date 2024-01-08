// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'review_item_model.dart';/// This class defines the variables used in the [review_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewModel extends Equatable {ReviewModel({this.reviewItemList = const []}) {  }

List<ReviewItemModel> reviewItemList;

ReviewModel copyWith({List<ReviewItemModel>? reviewItemList}) { return ReviewModel(
reviewItemList : reviewItemList ?? this.reviewItemList,
); } 
@override List<Object?> get props => [reviewItemList];
 }
