import 'models/group_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/group_chat_provider.dart';

class GroupChatBottomsheet extends StatefulWidget {
  const GroupChatBottomsheet({Key? key}) : super(key: key);

  @override
  GroupChatBottomsheetState createState() => GroupChatBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GroupChatProvider(),
        child: GroupChatBottomsheet());
  }
}

class GroupChatBottomsheetState extends State<GroupChatBottomsheet> {
  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.videoChatScreen,
    );
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
