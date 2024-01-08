import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/view_ticket_screen/models/view_ticket_model.dart';part 'view_ticket_state.dart';final viewTicketNotifier = StateNotifierProvider<ViewTicketNotifier, ViewTicketState>((ref) => ViewTicketNotifier(ViewTicketState(viewTicketModelObj: ViewTicketModel())));
/// A notifier that manages the state of a ViewTicket according to the event that is dispatched to it.
class ViewTicketNotifier extends StateNotifier<ViewTicketState> {ViewTicketNotifier(ViewTicketState state) : super(state);

 }
