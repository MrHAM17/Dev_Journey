// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'frame1_item_model.dart';import 'fiftynine_item_model.dart';/// This class defines the variables used in the [search_result_podcast_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultPodcastModel extends Equatable {SearchResultPodcastModel({this.frame1ItemList = const [], this.fiftynineItemList = const [], }) {  }

List<Frame1ItemModel> frame1ItemList;

List<FiftynineItemModel> fiftynineItemList;

SearchResultPodcastModel copyWith({List<Frame1ItemModel>? frame1ItemList, List<FiftynineItemModel>? fiftynineItemList, }) { return SearchResultPodcastModel(
frame1ItemList : frame1ItemList ?? this.frame1ItemList,
fiftynineItemList : fiftynineItemList ?? this.fiftynineItemList,
); } 
@override List<Object?> get props => [frame1ItemList,fiftynineItemList];
 }
