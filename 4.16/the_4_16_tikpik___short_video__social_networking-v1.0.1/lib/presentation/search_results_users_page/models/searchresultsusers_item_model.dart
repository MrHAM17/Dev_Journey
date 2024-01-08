import '../../../core/app_export.dart';/// This class is used in the [searchresultsusers_item_widget] screen.
class SearchresultsusersItemModel {SearchresultsusersItemModel({this.darcelBallentine, this.darcelBallentine1, this.price, this.id, }) { darcelBallentine = darcelBallentine  ?? Rx(ImageConstant.imgEllipse2);darcelBallentine1 = darcelBallentine1  ?? Rx("Darcel Ballentine");price = price  ?? Rx("darcelballentine | 26.37K ");id = id  ?? Rx(""); }

Rx<String>? darcelBallentine;

Rx<String>? darcelBallentine1;

Rx<String>? price;

Rx<String>? id;

 }
