// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayouthorizontal7_item_model.dart';import 'theresavarnes_item_model.dart';/// This class defines the variables used in the [messages_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {MessagesModel({this.autolayouthorizontal7ItemList = const [], this.theresavarnesItemList = const [], }) {  }

List<Autolayouthorizontal7ItemModel> autolayouthorizontal7ItemList;

List<TheresavarnesItemModel> theresavarnesItemList;

MessagesModel copyWith({List<Autolayouthorizontal7ItemModel>? autolayouthorizontal7ItemList, List<TheresavarnesItemModel>? theresavarnesItemList, }) { return MessagesModel(
autolayouthorizontal7ItemList : autolayouthorizontal7ItemList ?? this.autolayouthorizontal7ItemList,
theresavarnesItemList : theresavarnesItemList ?? this.theresavarnesItemList,
); } 
@override List<Object?> get props => [autolayouthorizontal7ItemList,theresavarnesItemList];
 }
