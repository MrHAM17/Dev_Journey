import '../../../core/app_export.dart';/// This class is used in the [searchresultssounds_item_widget] screen.
class SearchresultssoundsItemModel {SearchresultssoundsItemModel({this.k, this.soundsTitle, this.singer, this.time, this.total, this.id, }) { k = k  ?? ImageConstant.imgImage80x80;soundsTitle = soundsTitle  ?? "Side to Side";singer = singer  ?? "Ariana Grande";time = time  ?? "01:00";total = total  ?? "938.6K";id = id  ?? ""; }

String? k;

String? soundsTitle;

String? singer;

String? time;

String? total;

String? id;

 }
