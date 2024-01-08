import '../../../core/app_export.dart';import 'data_item_model.dart';/// This class defines the variables used in the [top_locations_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopLocationsModel {Rx<List<DataItemModel>> dataItemList = Rx([DataItemModel(bali:ImageConstant.imgShape174x144.obs,bali1: "Bali".obs),DataItemModel(bali:ImageConstant.imgShape5.obs,bali1: "Jakarta".obs),DataItemModel(bali:ImageConstant.imgShape6.obs,bali1: "Yogyakarta".obs),DataItemModel(bali:ImageConstant.imgShape7.obs,bali1: "Semarang".obs),DataItemModel(bali:ImageConstant.imgShape8.obs,bali1: "Jakarta".obs),DataItemModel(bali:ImageConstant.imgShape9.obs,bali1: "Jakarta".obs)]);

 }
