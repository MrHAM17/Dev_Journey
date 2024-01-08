import '../../../core/app_export.dart';/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel {WidgetItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Rent";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

 }
