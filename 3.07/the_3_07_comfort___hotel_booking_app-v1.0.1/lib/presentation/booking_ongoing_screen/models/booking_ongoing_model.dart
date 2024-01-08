// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'tickets1_item_model.dart';/// This class defines the variables used in the [booking_ongoing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingOngoingModel extends Equatable {BookingOngoingModel({this.tickets1ItemList = const []}) {  }

List<Tickets1ItemModel> tickets1ItemList;

BookingOngoingModel copyWith({List<Tickets1ItemModel>? tickets1ItemList}) { return BookingOngoingModel(
tickets1ItemList : tickets1ItemList ?? this.tickets1ItemList,
); } 
@override List<Object?> get props => [tickets1ItemList];
 }
