import '../../../core/app_export.dart';/// This class is used in the [forgotpassword_item_widget] screen.
class ForgotpasswordItemModel {ForgotpasswordItemModel({this.viaSMS, this.viaSMS1, this.oneHundredElevenThousandOneHun, this.id, }) { viaSMS = viaSMS  ?? Rx(ImageConstant.imgUser);viaSMS1 = viaSMS1  ?? Rx("via SMS:");oneHundredElevenThousandOneHun = oneHundredElevenThousandOneHun  ?? Rx("+1 111 ******99");id = id  ?? Rx(""); }

Rx<String>? viaSMS;

Rx<String>? viaSMS1;

Rx<String>? oneHundredElevenThousandOneHun;

Rx<String>? id;

 }
