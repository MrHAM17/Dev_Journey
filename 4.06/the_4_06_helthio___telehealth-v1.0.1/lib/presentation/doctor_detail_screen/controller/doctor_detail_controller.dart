import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the DoctorDetailScreen.
///
/// This class manages the state of the DoctorDetailScreen, including the
/// current doctorDetailModelObj
class DoctorDetailController extends GetxController {
  Rx<DoctorDetailModel> doctorDetailModelObj = DoctorDetailModel().obs;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.bookingDoctorScreen,
    );
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
