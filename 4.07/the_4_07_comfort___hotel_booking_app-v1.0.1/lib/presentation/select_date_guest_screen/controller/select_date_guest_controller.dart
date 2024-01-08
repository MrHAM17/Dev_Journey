import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/select_date_guest_screen/models/select_date_guest_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the SelectDateGuestScreen.
///
/// This class manages the state of the SelectDateGuestScreen, including the
/// current selectDateGuestModelObj
class SelectDateGuestController extends GetxController {Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

 }
