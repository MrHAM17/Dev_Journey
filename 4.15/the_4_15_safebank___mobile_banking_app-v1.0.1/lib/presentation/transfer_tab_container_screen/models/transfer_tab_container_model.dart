import '../../../core/app_export.dart';
import 'transfertabcontainer_item_model.dart';

/// This class defines the variables used in the [transfer_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransferTabContainerModel {
  Rx<List<TransfertabcontainerItemModel>> transfertabcontainerItemList = Rx([
    TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse309.obs),
    TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse310.obs),
    TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse313.obs),
    TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse312.obs),
    TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse311.obs)
  ]);
}
