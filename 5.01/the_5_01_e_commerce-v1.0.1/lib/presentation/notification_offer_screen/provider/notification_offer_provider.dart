import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/notification_offer_screen/models/notification_offer_model.dart';/// A provider class for the NotificationOfferScreen.
///
/// This provider manages the state of the NotificationOfferScreen, including the
/// current notificationOfferModelObj

// ignore_for_file: must_be_immutable
class NotificationOfferProvider extends ChangeNotifier {NotificationOfferModel notificationOfferModelObj = NotificationOfferModel();

@override void dispose() { super.dispose(); } 
 }
