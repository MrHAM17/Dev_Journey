import '../../../core/app_export.dart';
import 'sixtyseven_item_model.dart';
import 'eightytwo_item_model.dart';

class HomeModel {
  List<SixtysevenItemModel> sixtysevenItemList = [
    SixtysevenItemModel(close: ImageConstant.imgClose)
  ];

  List<EightytwoItemModel> eightytwoItemList = [
    EightytwoItemModel(
        name: "Dustin Houston",
        time: "5 min ago",
        copy: "Whether its a driving tour 😂",
        label: "326",
        label1: "148",
        label2: "Share"),
    EightytwoItemModel(copy: "Whether its a driving tour 😂")
  ];
}
