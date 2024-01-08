import '../../../core/app_export.dart';/// This class is used in the [podcasts_item_widget] screen.
class PodcastsItemModel {PodcastsItemModel({this.categories, this.charts, this.id, }) { categories = categories  ?? Rx("Charts");charts = charts  ?? Rx(ImageConstant.imgImage91x81);id = id  ?? Rx(""); }

Rx<String>? categories;

Rx<String>? charts;

Rx<String>? id;

 }
