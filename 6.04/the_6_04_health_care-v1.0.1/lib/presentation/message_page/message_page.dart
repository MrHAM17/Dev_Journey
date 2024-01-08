import '../message_page/widgets/chat_item_widget.dart';
import 'models/chat_item_model.dart';
import 'notifier/message_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_04_health_care/core/app_export.dart';

class MessagePage extends ConsumerStatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends ConsumerState<MessagePage>
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
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 24.v);
              },
              itemCount: ref
                      .watch(messageNotifier)
                      .messageModelObj
                      ?.chatItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ChatItemModel model = ref
                        .watch(messageNotifier)
                        .messageModelObj
                        ?.chatItemList[index] ??
                    ChatItemModel();
                return ChatItemWidget(model, onTapChat: () {
                  onTapChat(context);
                });
              });
        }));
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapChat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }
}
