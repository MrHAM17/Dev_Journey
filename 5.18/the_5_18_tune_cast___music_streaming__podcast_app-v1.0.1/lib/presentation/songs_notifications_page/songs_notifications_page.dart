import '../songs_notifications_page/widgets/songsnotifications_item_widget.dart';
import 'models/songs_notifications_model.dart';
import 'models/songsnotifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'provider/songs_notifications_provider.dart';

// ignore_for_file: must_be_immutable
class SongsNotificationsPage extends StatefulWidget {
  const SongsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SongsNotificationsPageState createState() => SongsNotificationsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SongsNotificationsProvider(),
      child: SongsNotificationsPage(),
    );
  }
}

class SongsNotificationsPageState extends State<SongsNotificationsPage>
    with AutomaticKeepAliveClientMixin<SongsNotificationsPage> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_music_release".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 20.v),
                      _buildSongsNotifications(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSongsNotifications(BuildContext context) {
    return Consumer<SongsNotificationsProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: provider
              .songsNotificationsModelObj.songsnotificationsItemList.length,
          itemBuilder: (context, index) {
            SongsnotificationsItemModel model = provider
                .songsNotificationsModelObj.songsnotificationsItemList[index];
            return SongsnotificationsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
