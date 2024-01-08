import '../message_history_page/widgets/messagehistory_item_widget.dart';
import 'models/message_history_model.dart';
import 'models/messagehistory_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'provider/message_history_provider.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryPage extends StatefulWidget {
  const MessageHistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessageHistoryPageState createState() => MessageHistoryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MessageHistoryProvider(),
      child: MessageHistoryPage(),
    );
  }
}

class MessageHistoryPageState extends State<MessageHistoryPage>
    with AutomaticKeepAliveClientMixin<MessageHistoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

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
        child: Consumer<MessageHistoryProvider>(
          builder: (context, provider, child) {
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
              itemCount:
                  provider.messageHistoryModelObj.messagehistoryItemList.length,
              itemBuilder: (context, index) {
                MessagehistoryItemModel model = provider
                    .messageHistoryModelObj.messagehistoryItemList[index];
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
