import '../message_history_page/widgets/messagehistory_item_widget.dart';
import 'models/messagehistory_item_model.dart';
import 'notifier/message_history_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryPage extends ConsumerStatefulWidget {
  const MessageHistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessageHistoryPageState createState() => MessageHistoryPageState();
}

class MessageHistoryPageState extends ConsumerState<MessageHistoryPage>
    with AutomaticKeepAliveClientMixin<MessageHistoryPage> {
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
            children: [
              SizedBox(height: 32.v),
              _buildMessageHistory(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageHistory(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: ref
                      .watch(messageHistoryNotifier)
                      .messageHistoryModelObj
                      ?.messagehistoryItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                MessagehistoryItemModel model = ref
                        .watch(messageHistoryNotifier)
                        .messageHistoryModelObj
                        ?.messagehistoryItemList[index] ??
                    MessagehistoryItemModel();
                return MessagehistoryItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
