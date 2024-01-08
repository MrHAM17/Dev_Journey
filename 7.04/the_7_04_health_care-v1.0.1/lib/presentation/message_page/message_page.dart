import '../message_page/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_04_health_care/core/app_export.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage>
    with AutomaticKeepAliveClientMixin<MessagePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [SizedBox(height: 31.v), _buildChat(context)]))));
  }

  /// Section Widget
  Widget _buildChat(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ChatItemWidget(onTapChat: () {
                onTapChat(context);
              });
            }));
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapChat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}
