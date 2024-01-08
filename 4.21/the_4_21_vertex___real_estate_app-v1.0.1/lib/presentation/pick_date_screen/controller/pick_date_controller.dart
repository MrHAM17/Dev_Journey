import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/pick_date_screen/models/pick_date_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the PickDateScreen.
///
/// This class manages the state of the PickDateScreen, including the
/// current pickDateModelObj
class PickDateController extends GetxController {Rx<PickDateModel> pickDateModelObj = PickDateModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

 }
