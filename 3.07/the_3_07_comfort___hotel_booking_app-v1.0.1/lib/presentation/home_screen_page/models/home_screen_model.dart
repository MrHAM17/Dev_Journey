// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'hotels_item_model.dart';import 'sixty_item_model.dart';/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel extends Equatable {HomeScreenModel({this.hotelsItemList = const [], this.sixtyItemList = const [], }) {  }

List<HotelsItemModel> hotelsItemList;

List<SixtyItemModel> sixtyItemList;

HomeScreenModel copyWith({List<HotelsItemModel>? hotelsItemList, List<SixtyItemModel>? sixtyItemList, }) { return HomeScreenModel(
hotelsItemList : hotelsItemList ?? this.hotelsItemList,
sixtyItemList : sixtyItemList ?? this.sixtyItemList,
); } 
@override List<Object?> get props => [hotelsItemList,sixtyItemList];
 }
