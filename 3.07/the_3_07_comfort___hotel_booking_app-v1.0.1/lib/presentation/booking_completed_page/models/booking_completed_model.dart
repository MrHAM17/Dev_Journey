// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'tickets_item_model.dart';/// This class defines the variables used in the [booking_completed_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCompletedModel extends Equatable {BookingCompletedModel({this.ticketsItemList = const []}) {  }

List<TicketsItemModel> ticketsItemList;

BookingCompletedModel copyWith({List<TicketsItemModel>? ticketsItemList}) { return BookingCompletedModel(
ticketsItemList : ticketsItemList ?? this.ticketsItemList,
); } 
@override List<Object?> get props => [ticketsItemList];
 }
