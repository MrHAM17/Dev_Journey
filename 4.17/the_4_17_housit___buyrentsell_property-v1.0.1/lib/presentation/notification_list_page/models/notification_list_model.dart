import '../../../core/app_export.dart';import 'category_item_model.dart';import 'list_item_model.dart';import 'samuelella_item_model.dart';/// This class defines the variables used in the [notification_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationListModel {Rx<List<CategoryItemModel>> categoryItemList = Rx([CategoryItemModel(all: "All".obs),CategoryItemModel(all: "Review".obs),CategoryItemModel(all: " Sold".obs),CategoryItemModel(all: "House".obs)]);

Rx<List<ListItemModel>> listItemList = Rx([ListItemModel(emmettPerry:ImageConstant.imgShape50x50.obs,emmettPerry1: "Emmett Perry".obs,time: "10 mins ago".obs)]);

Rx<List<SamuelellaItemModel>> samuelellaItemList = Rx(List.generate(1,(index) => SamuelellaItemModel()));

 }
