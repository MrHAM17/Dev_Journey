import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/booking_name_page/models/booking_name_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingNamePage.
///
/// This class manages the state of the BookingNamePage, including the
/// current bookingNameModelObj
class BookingNameController extends GetxController {BookingNameController(this.bookingNameModelObj);

TextEditingController labelController = TextEditingController();

TextEditingController labelController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj;

@override void onClose() { super.onClose(); labelController.dispose(); labelController1.dispose(); dateController.dispose(); emailController.dispose(); phoneController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.choosePaymentMethodScreen, ); } 
 }
