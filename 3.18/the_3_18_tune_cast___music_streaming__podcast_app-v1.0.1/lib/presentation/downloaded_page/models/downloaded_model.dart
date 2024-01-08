// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'downloaded_item_model.dart';/// This class defines the variables used in the [downloaded_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DownloadedModel extends Equatable {DownloadedModel({this.downloadedItemList = const []}) {  }

List<DownloadedItemModel> downloadedItemList;

DownloadedModel copyWith({List<DownloadedItemModel>? downloadedItemList}) { return DownloadedModel(
downloadedItemList : downloadedItemList ?? this.downloadedItemList,
); } 
@override List<Object?> get props => [downloadedItemList];
 }
