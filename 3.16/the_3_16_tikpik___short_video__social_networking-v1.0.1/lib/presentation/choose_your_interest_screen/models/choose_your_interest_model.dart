// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sizelargetypeborder_item_model.dart';/// This class defines the variables used in the [choose_your_interest_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseYourInterestModel extends Equatable {ChooseYourInterestModel({this.sizelargetypeborderItemList = const []}) {  }

List<SizelargetypeborderItemModel> sizelargetypeborderItemList;

ChooseYourInterestModel copyWith({List<SizelargetypeborderItemModel>? sizelargetypeborderItemList}) { return ChooseYourInterestModel(
sizelargetypeborderItemList : sizelargetypeborderItemList ?? this.sizelargetypeborderItemList,
); } 
@override List<Object?> get props => [sizelargetypeborderItemList];
 }
