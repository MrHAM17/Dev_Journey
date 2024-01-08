import '../../../core/app_export.dart';/// This class is used in the [home_item_widget] screen.
class HomeItemModel {HomeItemModel({this.home, this.isSelected, }) { home = home  ?? "Home";isSelected = isSelected  ?? false; }

String? home;

bool? isSelected;

 }
