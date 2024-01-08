import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/booking_name_page/models/booking_name_model.dart';/// A provider class for the BookingNamePage.
///
/// This provider manages the state of the BookingNamePage, including the
/// current bookingNameModelObj

// ignore_for_file: must_be_immutable
class BookingNameProvider extends ChangeNotifier {TextEditingController labelController = TextEditingController();

TextEditingController labelController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

BookingNameModel bookingNameModelObj = BookingNameModel();

@override void dispose() { super.dispose(); labelController.dispose(); labelController1.dispose(); dateController.dispose(); emailController.dispose(); phoneController.dispose(); } 
 }
