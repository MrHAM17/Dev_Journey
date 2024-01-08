// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'confirmrequestbottomsheet_item_model.dart';/// This class defines the variables used in the [confirm_request_bottom_sheet_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ConfirmRequestBottomSheetModel extends Equatable {ConfirmRequestBottomSheetModel({this.confirmrequestbottomsheetItemList = const []}) {  }

List<ConfirmrequestbottomsheetItemModel> confirmrequestbottomsheetItemList;

ConfirmRequestBottomSheetModel copyWith({List<ConfirmrequestbottomsheetItemModel>? confirmrequestbottomsheetItemList}) { return ConfirmRequestBottomSheetModel(
confirmrequestbottomsheetItemList : confirmrequestbottomsheetItemList ?? this.confirmrequestbottomsheetItemList,
); } 
@override List<Object?> get props => [confirmrequestbottomsheetItemList];
 }
