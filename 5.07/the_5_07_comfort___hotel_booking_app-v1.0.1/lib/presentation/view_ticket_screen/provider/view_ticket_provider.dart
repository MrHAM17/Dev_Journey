import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/view_ticket_screen/models/view_ticket_model.dart';/// A provider class for the ViewTicketScreen.
///
/// This provider manages the state of the ViewTicketScreen, including the
/// current viewTicketModelObj

// ignore_for_file: must_be_immutable
class ViewTicketProvider extends ChangeNotifier {ViewTicketModel viewTicketModelObj = ViewTicketModel();

@override void dispose() { super.dispose(); } 
 }
