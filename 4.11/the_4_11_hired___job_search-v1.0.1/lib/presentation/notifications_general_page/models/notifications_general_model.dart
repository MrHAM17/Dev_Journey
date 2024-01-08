import '../../../core/app_export.dart';
import 'notificationsgeneral_item_model.dart';

/// This class defines the variables used in the [notifications_general_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsGeneralModel {
  Rx<List<NotificationsgeneralItemModel>> notificationsgeneralItemList = Rx([
    NotificationsgeneralItemModel(
        bag: ImageConstant.imgBag.obs,
        juniorUIDesigner: "Junior UI Designer ".obs,
        shopeeSg: "Shopee Sg".obs,
        time: "32 Min ago".obs,
        loremIpsumDolor:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.".obs),
    NotificationsgeneralItemModel(
        bag: ImageConstant.imgBag.obs,
        juniorUIDesigner: "Senior UI Designer ".obs,
        shopeeSg: "Shopee Sg".obs,
        time: "32 Min ago".obs,
        loremIpsumDolor:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.".obs),
    NotificationsgeneralItemModel(
        bag: ImageConstant.imgSettingsRed800.obs,
        juniorUIDesigner: "UI UX Designer".obs,
        shopeeSg: "Shell".obs,
        time: "32 Min ago".obs,
        loremIpsumDolor:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.".obs),
    NotificationsgeneralItemModel(
        bag: ImageConstant.imgClose.obs,
        juniorUIDesigner: "UI Designer ".obs,
        shopeeSg: "Cardano ".obs,
        time: "32 Min ago".obs,
        loremIpsumDolor:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.".obs)
  ]);
}
