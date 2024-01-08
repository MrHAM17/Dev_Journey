import '../../../core/app_export.dart';import 'homealarm_item_model.dart';/// This class defines the variables used in the [home_alarm_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeAlarmModel {Rx<List<HomealarmItemModel>> homealarmItemList = Rx([HomealarmItemModel(mightyCincoFamily: "Mighty Cinco Family".obs,stCelinaDelaware: "St. Celina, Delaware 10299".obs,jan:ImageConstant.imgCalendar.obs,jan1: "Jan 1, 2021".obs,pm:ImageConstant.imgClock.obs,time: "4:00 PM".obs,mightyCincoFamily1:ImageConstant.imgAvatar.obs,buyerSAgent: "Buyer’s Agent".obs,leslieAlexander: "Leslie Alexander".obs)]);

 }
