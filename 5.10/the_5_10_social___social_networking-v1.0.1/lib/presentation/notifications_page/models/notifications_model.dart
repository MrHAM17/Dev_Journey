import '../../../core/app_export.dart';
import 'notifications_item_model.dart';

class NotificationsModel {
  List<NotificationsItemModel> notificationsItemList = [
    NotificationsItemModel(
        image: ImageConstant.imgEllipse22,
        kevinHasFollowed: "Kevin has followed you",
        duration: "1 hour ago"),
    NotificationsItemModel(
        image: ImageConstant.imgEllipse2254x52,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline",
        duration: "2 hours ago"),
    NotificationsItemModel(image: ImageConstant.imgEllipse221),
    NotificationsItemModel(
        image: ImageConstant.imgEllipse222,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline",
        duration: "2 hours ago"),
    NotificationsItemModel(
        image: ImageConstant.imgEllipse22,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline",
        duration: "2 hours ago")
  ];
}
