import '../songs_notifications_page/widgets/songsnotifications_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SongsNotificationsPage extends StatefulWidget {
  const SongsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SongsNotificationsPageState createState() => SongsNotificationsPageState();
}

class SongsNotificationsPageState extends State<SongsNotificationsPage>
    with AutomaticKeepAliveClientMixin<SongsNotificationsPage> {
  @override
  bool get wantKeepAlive => true;
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
                        "New Music Release Today",
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
      itemCount: 3,
      itemBuilder: (context, index) {
        return SongsnotificationsItemWidget();
      },
    );
  }
}
