// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [empty_map_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EmptyMapModel extends Equatable {EmptyMapModel() {  }

EmptyMapModel copyWith() { return EmptyMapModel(
); } 
@override List<Object?> get props => [];
 }
