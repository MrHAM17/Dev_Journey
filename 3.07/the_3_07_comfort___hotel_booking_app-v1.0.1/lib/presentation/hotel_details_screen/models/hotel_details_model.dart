// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'photos_item_model.dart';import 'framenineteen_item_model.dart';import 'package:the_3_07_comfort___hotel_booking_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [hotel_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelDetailsModel extends Equatable {HotelDetailsModel({this.photosItemList = const [], this.framenineteenItemList = const [], this.dropdownItemList = const [], }) {  }

List<PhotosItemModel> photosItemList;

List<FramenineteenItemModel> framenineteenItemList;

List<SelectionPopupModel> dropdownItemList;

HotelDetailsModel copyWith({List<PhotosItemModel>? photosItemList, List<FramenineteenItemModel>? framenineteenItemList, List<SelectionPopupModel>? dropdownItemList, }) { return HotelDetailsModel(
photosItemList : photosItemList ?? this.photosItemList,
framenineteenItemList : framenineteenItemList ?? this.framenineteenItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [photosItemList,framenineteenItemList,dropdownItemList];
 }
