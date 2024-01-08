// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'trendingnow_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.trendingnowItemList = const []}) {  }

List<TrendingnowItemModel> trendingnowItemList;

HomeModel copyWith({List<TrendingnowItemModel>? trendingnowItemList}) { return HomeModel(
trendingnowItemList : trendingnowItemList ?? this.trendingnowItemList,
); } 
@override List<Object?> get props => [trendingnowItemList];
 }
