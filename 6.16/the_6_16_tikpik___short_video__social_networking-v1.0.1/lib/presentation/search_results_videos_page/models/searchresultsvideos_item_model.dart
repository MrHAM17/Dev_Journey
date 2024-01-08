// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';/// This class is used in the [searchresultsvideos_item_widget] screen.
class SearchresultsvideosItemModel extends Equatable {SearchresultsvideosItemModel({this.k, this.k1, this.k2, this.radioGroup, this.id, }) { k = k  ?? ImageConstant.imgImage300x186;k1 = k1  ?? ImageConstant.imgOverflowmenuPrimary;k2 = k2  ?? "837.5K";radioGroup = radioGroup  ?? "";id = id  ?? ""; }

String? k;

String? k1;

String? k2;

String? radioGroup;

String? id;

SearchresultsvideosItemModel copyWith({String? k, String? k1, String? k2, String? radioGroup, String? id, }) { return SearchresultsvideosItemModel(
k : k ?? this.k,
k1 : k1 ?? this.k1,
k2 : k2 ?? this.k2,
radioGroup : radioGroup ?? this.radioGroup,
id : id ?? this.id,
); } 
@override List<Object?> get props => [k,k1,k2,radioGroup,id];
 }
