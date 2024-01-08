import '../../../core/app_export.dart';import 'category_item_model.dart';import 'list_item_model.dart';import 'samuelella_item_model.dart';class NotificationListModel {List<CategoryItemModel> categoryItemList = [CategoryItemModel(all: "All"),CategoryItemModel(all: "Review"),CategoryItemModel(all: " Sold"),CategoryItemModel(all: "House")];

List<ListItemModel> listItemList = [ListItemModel(emmettPerry:ImageConstant.imgShape50x50,emmettPerry1: "Emmett Perry",time: "10 mins ago")];

List<SamuelellaItemModel> samuelellaItemList = List.generate(1,(index) => SamuelellaItemModel());

 }
