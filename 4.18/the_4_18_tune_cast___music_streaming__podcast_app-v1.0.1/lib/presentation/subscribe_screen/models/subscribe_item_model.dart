import '../../../core/app_export.dart';/// This class is used in the [subscribe_item_widget] screen.
class SubscribeItemModel {SubscribeItemModel({this.price, this.month, this.listeningWithBetter, this.listeningWithout, this.shufflePlayDownload, this.id, }) { price = price  ?? Rx("9.99");month = month  ?? Rx("/month");listeningWithBetter = listeningWithBetter  ?? Rx("Listening with better audio quality");listeningWithout = listeningWithout  ?? Rx("Listening without restrictions & ads");shufflePlayDownload = shufflePlayDownload  ?? Rx("Shuffle play & download unlimited");id = id  ?? Rx(""); }

Rx<String>? price;

Rx<String>? month;

Rx<String>? listeningWithBetter;

Rx<String>? listeningWithout;

Rx<String>? shufflePlayDownload;

Rx<String>? id;

 }
