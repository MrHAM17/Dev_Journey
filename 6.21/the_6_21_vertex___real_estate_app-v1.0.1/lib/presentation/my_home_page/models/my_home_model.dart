// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'list_item_model.dart';/// This class defines the variables used in the [my_home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyHomeModel extends Equatable {MyHomeModel({this.listItemList = const []}) {  }

List<ListItemModel> listItemList;

MyHomeModel copyWith({List<ListItemModel>? listItemList}) { return MyHomeModel(
listItemList : listItemList ?? this.listItemList,
); } 
@override List<Object?> get props => [listItemList];
 }
