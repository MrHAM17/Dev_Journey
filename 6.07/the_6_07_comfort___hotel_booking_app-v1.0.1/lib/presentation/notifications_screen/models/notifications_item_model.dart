import '../../../core/app_export.dart';/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {NotificationsItemModel({this.youHaveCanceled, this.image, this.hotelBookingCanceled, this.id, }) { youHaveCanceled = youHaveCanceled  ?? "You have canceled your hotel booking";image = image  ?? ImageConstant.imgGroupWhiteA700;hotelBookingCanceled = hotelBookingCanceled  ?? "Hotel Booking Canceled";id = id  ?? ""; }

String? youHaveCanceled;

String? image;

String? hotelBookingCanceled;

String? id;

 }
