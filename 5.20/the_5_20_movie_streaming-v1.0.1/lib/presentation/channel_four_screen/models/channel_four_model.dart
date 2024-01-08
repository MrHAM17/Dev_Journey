import '../../../core/app_export.dart';
import 'channelfour_item_model.dart';

class ChannelFourModel {
  List<ChannelfourItemModel> channelfourItemList = [
    ChannelfourItemModel(ktv: ImageConstant.imgBackgroundImage, ktv1: "K TV"),
    ChannelfourItemModel(
        ktv: ImageConstant.imgBackgroundImage56x56, ktv1: "ONENEWS TV"),
    ChannelfourItemModel(
        ktv: ImageConstant.imgBackgroundImage1, ktv1: "CNN TV"),
    ChannelfourItemModel(ktv: ImageConstant.imgBackgroundImage2, ktv1: "ESPN")
  ];
}
