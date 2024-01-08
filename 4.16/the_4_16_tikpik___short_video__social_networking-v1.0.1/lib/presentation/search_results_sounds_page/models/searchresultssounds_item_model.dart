import '../../../core/app_export.dart';/// This class is used in the [searchresultssounds_item_widget] screen.
class SearchresultssoundsItemModel {SearchresultssoundsItemModel({this.k, this.soundsTitle, this.singer, this.time, this.total, this.id, }) { k = k  ?? Rx(ImageConstant.imgImage80x80);soundsTitle = soundsTitle  ?? Rx("Side to Side");singer = singer  ?? Rx("Ariana Grande");time = time  ?? Rx("01:00");total = total  ?? Rx("938.6K");id = id  ?? Rx(""); }

Rx<String>? k;

Rx<String>? soundsTitle;

Rx<String>? singer;

Rx<String>? time;

Rx<String>? total;

Rx<String>? id;

 }
