import '../../../core/app_export.dart';/// This class is used in the [homealarm_item_widget] screen.
class HomealarmItemModel {HomealarmItemModel({this.mightyCincoFamily, this.stCelinaDelaware, this.jan, this.jan1, this.pm, this.time, this.mightyCincoFamily1, this.buyerSAgent, this.leslieAlexander, this.id, }) { mightyCincoFamily = mightyCincoFamily  ?? Rx("Mighty Cinco Family");stCelinaDelaware = stCelinaDelaware  ?? Rx("St. Celina, Delaware 10299");jan = jan  ?? Rx(ImageConstant.imgCalendar);jan1 = jan1  ?? Rx("Jan 1, 2021");pm = pm  ?? Rx(ImageConstant.imgClock);time = time  ?? Rx("4:00 PM");mightyCincoFamily1 = mightyCincoFamily1  ?? Rx(ImageConstant.imgAvatar);buyerSAgent = buyerSAgent  ?? Rx("Buyer’s Agent");leslieAlexander = leslieAlexander  ?? Rx("Leslie Alexander");id = id  ?? Rx(""); }

Rx<String>? mightyCincoFamily;

Rx<String>? stCelinaDelaware;

Rx<String>? jan;

Rx<String>? jan1;

Rx<String>? pm;

Rx<String>? time;

Rx<String>? mightyCincoFamily1;

Rx<String>? buyerSAgent;

Rx<String>? leslieAlexander;

Rx<String>? id;

 }
