import 'bloc/group_chat_bloc.dart';
import 'models/group_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_09_social_dashboards_ui_kit/core/app_export.dart';

class GroupChatBottomsheet extends StatelessWidget {
  const GroupChatBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GroupChatBloc>(
        create: (context) =>
            GroupChatBloc(GroupChatState(groupChatModelObj: GroupChatModel()))
              ..add(GroupChatInitialEvent()),
        child: GroupChatBottomsheet());
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