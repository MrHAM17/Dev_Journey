import '../../../core/app_export.dart';/// This class is used in the [subscribe_item_widget] screen.
class SubscribeItemModel {SubscribeItemModel({this.price, this.month, this.listeningWithBetter, this.listeningWithout, this.shufflePlayDownload, this.id, }) { price = price  ?? "9.99";month = month  ?? "/month";listeningWithBetter = listeningWithBetter  ?? "Listening with better audio quality";listeningWithout = listeningWithout  ?? "Listening without restrictions & ads";shufflePlayDownload = shufflePlayDownload  ?? "Shuffle play & download unlimited";id = id  ?? ""; }

String? price;

String? month;

String? listeningWithBetter;

String? listeningWithout;

String? shufflePlayDownload;

String? id;

 }
