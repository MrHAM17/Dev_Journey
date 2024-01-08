import '../message_page/widgets/chat_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/chat_item_model.dart';
import 'models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_04_health_care/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  MessageController controller = Get.put(MessageController(MessageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.maxFinite,
                child:
                    Column(children: [SizedBox(height: 31.v), _buildChat()]))));
  }

  /// Section Widget
  Widget _buildChat() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount:
                controller.messageModelObj.value.chatItemList.value.length,
            itemBuilder: (context, index) {
              ChatItemModel model =
                  controller.messageModelObj.value.chatItemList.value[index];
              return ChatItemWidget(model, onTapChat: () {
                onTapChat();
              });
            })));
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
