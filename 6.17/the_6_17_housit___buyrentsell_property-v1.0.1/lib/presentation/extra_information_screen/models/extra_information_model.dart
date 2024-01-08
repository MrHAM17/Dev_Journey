// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'layout6_item_model.dart';import '../../../core/app_export.dart';import 'layout8_item_model.dart';import 'layout9_item_model.dart';import 'layout11_item_model.dart';/// This class defines the variables used in the [extra_information_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExtraInformationModel extends Equatable {ExtraInformationModel({this.layout6ItemList = const [], this.layout8ItemList = const [], this.layout9ItemList = const [], this.layout11ItemList = const [], }) {  }

List<Layout6ItemModel> layout6ItemList;

List<Layout8ItemModel> layout8ItemList;

List<Layout9ItemModel> layout9ItemList;

List<Layout11ItemModel> layout11ItemList;

ExtraInformationModel copyWith({List<Layout6ItemModel>? layout6ItemList, List<Layout8ItemModel>? layout8ItemList, List<Layout9ItemModel>? layout9ItemList, List<Layout11ItemModel>? layout11ItemList, }) { return ExtraInformationModel(
layout6ItemList : layout6ItemList ?? this.layout6ItemList,
layout8ItemList : layout8ItemList ?? this.layout8ItemList,
layout9ItemList : layout9ItemList ?? this.layout9ItemList,
layout11ItemList : layout11ItemList ?? this.layout11ItemList,
); } 
@override List<Object?> get props => [layout6ItemList,layout8ItemList,layout9ItemList,layout11ItemList];
 }
