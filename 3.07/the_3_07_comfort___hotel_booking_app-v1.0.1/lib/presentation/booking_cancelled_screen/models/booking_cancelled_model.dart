// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'tickets2_item_model.dart';/// This class defines the variables used in the [booking_cancelled_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCancelledModel extends Equatable {BookingCancelledModel({this.tickets2ItemList = const []}) {  }

List<Tickets2ItemModel> tickets2ItemList;

BookingCancelledModel copyWith({List<Tickets2ItemModel>? tickets2ItemList}) { return BookingCancelledModel(
tickets2ItemList : tickets2ItemList ?? this.tickets2ItemList,
); } 
@override List<Object?> get props => [tickets2ItemList];
 }
