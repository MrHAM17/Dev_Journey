import '../../../core/app_export.dart';
import 'fortyseven_item_model.dart';
import 'doctor_item_model.dart';

class DashboardModel {
  List<FortysevenItemModel> fortysevenItemList = [
    FortysevenItemModel(ticket: ImageConstant.imgTicket),
    FortysevenItemModel(ticket: ImageConstant.imgCalculator),
    FortysevenItemModel(ticket: ImageConstant.imgAmbulance),
    FortysevenItemModel(ticket: ImageConstant.imgCalendar)
  ];

  List<DoctorItemModel> doctorItemList = [
    DoctorItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image,
        drMarcusHorizo1: "Dr. Marcus Horizo",
        chardiologist: "Chardiologist",
        ratting: "4,7",
        distance: "800m away"),
    DoctorItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image68x68,
        drMarcusHorizo1: "Dr. Maria Elena",
        chardiologist: "Psychologist",
        ratting: "4,9",
        distance: "1,5km away"),
    DoctorItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image1,
        drMarcusHorizo1: "Dr. Stevi Jessi",
        chardiologist: "Orthopedist",
        ratting: "4,8",
        distance: "2km away")
  ];
}
