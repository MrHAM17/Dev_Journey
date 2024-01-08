// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'category_item_model.dart';import 'list_item_model.dart';import 'samuelella_item_model.dart';/// This class defines the variables used in the [notification_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationListModel extends Equatable {NotificationListModel({this.categoryItemList = const [], this.listItemList = const [], this.samuelellaItemList = const [], }) {  }

List<CategoryItemModel> categoryItemList;

List<ListItemModel> listItemList;

List<SamuelellaItemModel> samuelellaItemList;

NotificationListModel copyWith({List<CategoryItemModel>? categoryItemList, List<ListItemModel>? listItemList, List<SamuelellaItemModel>? samuelellaItemList, }) { return NotificationListModel(
categoryItemList : categoryItemList ?? this.categoryItemList,
listItemList : listItemList ?? this.listItemList,
samuelellaItemList : samuelellaItemList ?? this.samuelellaItemList,
); } 
@override List<Object?> get props => [categoryItemList,listItemList,samuelellaItemList];
 }
