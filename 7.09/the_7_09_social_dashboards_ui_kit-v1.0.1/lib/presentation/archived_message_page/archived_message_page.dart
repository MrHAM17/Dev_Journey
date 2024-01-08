import '../archived_message_page/widgets/archivedmessage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/presentation/group_chat_bottomsheet/group_chat_bottomsheet.dart';

class ArchivedMessagePage extends StatefulWidget {
  const ArchivedMessagePage({Key? key}) : super(key: key);

  @override
  ArchivedMessagePageState createState() => ArchivedMessagePageState();
}

class ArchivedMessagePageState extends State<ArchivedMessagePage>
    with AutomaticKeepAliveClientMixin<ArchivedMessagePage> {
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
                  _buildArchivedMessage(context)
                ]))));
  }

  /// Section Widget
  Widget _buildArchivedMessage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 39.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ArchivedmessageItemWidget(onTapMessage: () {
                onTapMessage(context);
              });
            }));
  }

  /// Shows a modal bottom sheet with [GroupChatBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapMessage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => GroupChatBottomsheet(),
        isScrollControlled: true);
  }
}
