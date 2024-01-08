// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'intrestrow1_item_model.dart';

/// This class defines the variables used in the [interests_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsModel extends Equatable {
  InterestsModel({this.intrestrow1ItemList = const []}) {}

  List<Intrestrow1ItemModel> intrestrow1ItemList;

  InterestsModel copyWith({List<Intrestrow1ItemModel>? intrestrow1ItemList}) {
    return InterestsModel(
      intrestrow1ItemList: intrestrow1ItemList ?? this.intrestrow1ItemList,
    );
  }

  @override
  List<Object?> get props => [intrestrow1ItemList];
}
