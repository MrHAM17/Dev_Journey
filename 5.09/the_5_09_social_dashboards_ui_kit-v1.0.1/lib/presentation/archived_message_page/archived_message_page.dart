import '../archived_message_page/widgets/archivedmessage_item_widget.dart';
import 'models/archived_message_model.dart';
import 'models/archivedmessage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/archived_message_provider.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/group_chat_bottomsheet/group_chat_bottomsheet.dart';

class ArchivedMessagePage extends StatefulWidget {
  const ArchivedMessagePage({Key? key}) : super(key: key);

  @override
  ArchivedMessagePageState createState() => ArchivedMessagePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ArchivedMessageProvider(),
        child: ArchivedMessagePage());
  }
}

class ArchivedMessagePageState extends State<ArchivedMessagePage>
    with AutomaticKeepAliveClientMixin<ArchivedMessagePage> {
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
                  _buildArchivedMessage(context)
                ]))));
  }

  /// Section Widget
  Widget _buildArchivedMessage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Consumer<ArchivedMessageProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 39.v);
              },
              itemCount: provider
                  .archivedMessageModelObj.archivedmessageItemList.length,
              itemBuilder: (context, index) {
                ArchivedmessageItemModel model = provider
                    .archivedMessageModelObj.archivedmessageItemList[index];
                return ArchivedmessageItemWidget(model, onTapMessage: () {
                  onTapMessage(context);
                });
              });
        }));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [GroupChatBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapMessage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => GroupChatBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
