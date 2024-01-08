import '../../../core/app_export.dart';/// This class is used in the [confirmrequestbottomsheet_item_widget] screen.
class ConfirmrequestbottomsheetItemModel {ConfirmrequestbottomsheetItemModel({this.home, this.homeClosed, this.twentyFive, this.id, }) { home = home  ?? Rx(ImageConstant.imgHomePrimary);homeClosed = homeClosed  ?? Rx("Home Closed");twentyFive = twentyFive  ?? Rx("25");id = id  ?? Rx(""); }

Rx<String>? home;

Rx<String>? homeClosed;

Rx<String>? twentyFive;

Rx<String>? id;

 }
