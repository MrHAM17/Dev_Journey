// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'addnewpropertyreasonsellinghom_item_model.dart';/// This class defines the variables used in the [add_new_property_reason_selling_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewPropertyReasonSellingHomeModel extends Equatable {AddNewPropertyReasonSellingHomeModel({this.addnewpropertyreasonsellinghomItemList = const []}) {  }

List<AddnewpropertyreasonsellinghomItemModel> addnewpropertyreasonsellinghomItemList;

AddNewPropertyReasonSellingHomeModel copyWith({List<AddnewpropertyreasonsellinghomItemModel>? addnewpropertyreasonsellinghomItemList}) { return AddNewPropertyReasonSellingHomeModel(
addnewpropertyreasonsellinghomItemList : addnewpropertyreasonsellinghomItemList ?? this.addnewpropertyreasonsellinghomItemList,
); } 
@override List<Object?> get props => [addnewpropertyreasonsellinghomItemList];
 }
