// ignore_for_file: must_be_immutable

part of 'hotel_details_bloc.dart';

/// Represents the state of HotelDetails in the application.
class HotelDetailsState extends Equatable {
  HotelDetailsState({
    this.selectedDropDownValue,
    this.hotelDetailsModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  HotelDetailsModel? hotelDetailsModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        hotelDetailsModelObj,
      ];
  HotelDetailsState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    HotelDetailsModel? hotelDetailsModelObj,
  }) {
    return HotelDetailsState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      hotelDetailsModelObj: hotelDetailsModelObj ?? this.hotelDetailsModelObj,
    );
  }
}
