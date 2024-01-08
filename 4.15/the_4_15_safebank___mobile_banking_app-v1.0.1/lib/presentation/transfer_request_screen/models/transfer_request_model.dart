import '../../../core/app_export.dart';
import 'transferrequest_item_model.dart';

/// This class defines the variables used in the [transfer_request_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransferRequestModel {
  Rx<List<TransferrequestItemModel>> transferrequestItemList = Rx([
    TransferrequestItemModel(
        zanderWiza: ImageConstant.imgRectangle63.obs,
        zanderWiza1: "Zander Wiza".obs,
        uIUXDesigner: "UI/UX Designer".obs),
    TransferrequestItemModel(
        zanderWiza: ImageConstant.imgRectangle64.obs,
        zanderWiza1: "Devon Jerde".obs,
        uIUXDesigner: "Product Designer".obs),
    TransferrequestItemModel(
        zanderWiza: ImageConstant.imgRectangle65.obs,
        zanderWiza1: "Alvis Blick".obs,
        uIUXDesigner: "Graphic Designer".obs),
    TransferrequestItemModel(
        zanderWiza: ImageConstant.imgRectangle66.obs,
        zanderWiza1: "Kira Kulas".obs,
        uIUXDesigner: "Graphic Designer".obs),
    TransferrequestItemModel(
        zanderWiza: ImageConstant.imgRectangle67.obs,
        zanderWiza1: "Mara Wilkinson".obs,
        uIUXDesigner: "Project Manager".obs)
  ]);
}
