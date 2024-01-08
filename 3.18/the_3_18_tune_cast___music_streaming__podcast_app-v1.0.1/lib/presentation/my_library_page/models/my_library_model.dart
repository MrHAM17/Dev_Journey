// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'frame2_item_model.dart';/// This class defines the variables used in the [my_library_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLibraryModel extends Equatable {MyLibraryModel({this.frame2ItemList = const []}) {  }

List<Frame2ItemModel> frame2ItemList;

MyLibraryModel copyWith({List<Frame2ItemModel>? frame2ItemList}) { return MyLibraryModel(
frame2ItemList : frame2ItemList ?? this.frame2ItemList,
); } 
@override List<Object?> get props => [frame2ItemList];
 }
