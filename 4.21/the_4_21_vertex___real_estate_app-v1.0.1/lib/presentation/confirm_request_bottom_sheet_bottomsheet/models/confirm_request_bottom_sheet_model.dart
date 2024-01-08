import '../../../core/app_export.dart';import 'confirmrequestbottomsheet_item_model.dart';/// This class defines the variables used in the [confirm_request_bottom_sheet_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ConfirmRequestBottomSheetModel {Rx<List<ConfirmrequestbottomsheetItemModel>> confirmrequestbottomsheetItemList = Rx([ConfirmrequestbottomsheetItemModel(home:ImageConstant.imgHomePrimary.obs,homeClosed: "Home Closed".obs,twentyFive: "25".obs),ConfirmrequestbottomsheetItemModel(home:ImageConstant.imgMenu.obs,homeClosed: "Experience".obs,twentyFive: "5+ years".obs),ConfirmrequestbottomsheetItemModel(home:ImageConstant.imgUserPrimary.obs,homeClosed: "Condos".obs,twentyFive: "12+".obs),ConfirmrequestbottomsheetItemModel(home:ImageConstant.imgGridPrimary.obs,homeClosed: "Apartment".obs,twentyFive: "10+".obs)]);

 }
