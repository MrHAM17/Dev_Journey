import '../messages_page/widgets/messages_item_widget.dart';
import 'models/messages_item_model.dart';
import 'notifier/messages_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/chat_bottomsheet/chat_bottomsheet.dart';

class MessagesPage extends ConsumerStatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  MessagesPageState createState() => MessagesPageState();
}

class MessagesPageState extends ConsumerState<MessagesPage>
    with AutomaticKeepAliveClientMixin<MessagesPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 31.v),
                  _buildMessages(context)
                ]))));
  }

  /// Section Widget
  Widget _buildMessages(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 28.v);
              },
              itemCount: ref
                      .watch(messagesNotifier)
                      .messagesModelObj
                      ?.messagesItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                MessagesItemModel model = ref
                        .watch(messagesNotifier)
                        .messagesModelObj
                        ?.messagesItemList[index] ??
                    MessagesItemModel();
                return MessagesItemWidget(model, onTapMessage: () {
                  onTapMessage(context);
                });
              });
        }));
  }

  /// Shows a modal bottom sheet with [ChatBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapMessage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChatBottomsheet(),
        isScrollControlled: true);
  }
}
