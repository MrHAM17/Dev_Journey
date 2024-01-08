import '../messages_page/widgets/messages_item_widget.dart';
import 'models/messages_item_model.dart';
import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/messages_provider.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/chat_bottomsheet/chat_bottomsheet.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  MessagesPageState createState() => MessagesPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MessagesProvider(), child: MessagesPage());
  }
}

class MessagesPageState extends State<MessagesPage>
    with AutomaticKeepAliveClientMixin<MessagesPage> {
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
        child: Consumer<MessagesProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 28.v);
              },
              itemCount: provider.messagesModelObj.messagesItemList.length,
              itemBuilder: (context, index) {
                MessagesItemModel model =
                    provider.messagesModelObj.messagesItemList[index];
                return MessagesItemWidget(model, onTapMessage: () {
                  onTapMessage(context);
                });
              });
        }));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ChatBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapMessage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChatBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
