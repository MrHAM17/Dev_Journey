// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'typecomments_item_model.dart';/// This class defines the variables used in the [type_comments_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TypeCommentsModel extends Equatable {TypeCommentsModel({this.typecommentsItemList = const []}) {  }

List<TypecommentsItemModel> typecommentsItemList;

TypeCommentsModel copyWith({List<TypecommentsItemModel>? typecommentsItemList}) { return TypeCommentsModel(
typecommentsItemList : typecommentsItemList ?? this.typecommentsItemList,
); } 
@override List<Object?> get props => [typecommentsItemList];
 }
