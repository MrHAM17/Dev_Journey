import 'notifications_item_model.dart';
import '../../../core/app_export.dart';

class NotificationsModel {
  List<NotificationsItemModel> notificationsItemList =
      List.generate(3, (index) => NotificationsItemModel());
}
