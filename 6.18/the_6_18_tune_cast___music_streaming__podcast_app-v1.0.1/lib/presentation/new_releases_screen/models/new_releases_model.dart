// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'newreleases_item_model.dart';/// This class defines the variables used in the [new_releases_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewReleasesModel extends Equatable {NewReleasesModel({this.newreleasesItemList = const []}) {  }

List<NewreleasesItemModel> newreleasesItemList;

NewReleasesModel copyWith({List<NewreleasesItemModel>? newreleasesItemList}) { return NewReleasesModel(
newreleasesItemList : newreleasesItemList ?? this.newreleasesItemList,
); } 
@override List<Object?> get props => [newreleasesItemList];
 }
