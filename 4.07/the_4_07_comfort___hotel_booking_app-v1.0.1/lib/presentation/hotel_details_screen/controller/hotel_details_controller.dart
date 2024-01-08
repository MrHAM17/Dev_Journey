import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/hotel_details_screen/models/hotel_details_model.dart';/// A controller class for the HotelDetailsScreen.
///
/// This class manages the state of the HotelDetailsScreen, including the
/// current hotelDetailsModelObj
class HotelDetailsController extends GetxController {Rx<HotelDetailsModel> hotelDetailsModelObj = HotelDetailsModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in hotelDetailsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} hotelDetailsModelObj.value.dropdownItemList.refresh(); } 
@override void onReady() { Get.toNamed(AppRoutes.galleryScreen, );Get.toNamed(AppRoutes.selectDateGuestScreen, ); } 
 }
