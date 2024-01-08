import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/chat_provider.dart';

class ChatBottomsheet extends StatefulWidget {
  const ChatBottomsheet({Key? key}) : super(key: key);

  @override
  ChatBottomsheetState createState() => ChatBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatProvider(), child: ChatBottomsheet());
  }
}

class ChatBottomsheetState extends State<ChatBottomsheet> {
  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  @override
  void initState(BuildContext context) async {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.videoChatScreen,
    );
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 168.h, vertical: 22.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL32),
        child: CustomImageView(
            imagePath: ImageConstant.imgIndicatorOnLight,
            height: 5.v,
            width: 38.h,
            alignment: Alignment.center));
  }
}
