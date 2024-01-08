import '../podcasts_notifications_page/widgets/podcastsnotifications_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PodcastsNotificationsPage extends StatefulWidget {
  const PodcastsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PodcastsNotificationsPageState createState() =>
      PodcastsNotificationsPageState();
}

class PodcastsNotificationsPageState extends State<PodcastsNotificationsPage>
    with AutomaticKeepAliveClientMixin<PodcastsNotificationsPage> {
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
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Podcasts Release Today",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 22.v),
                      _buildPodcastsNotifications(context),
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
  Widget _buildPodcastsNotifications(BuildContext context) {
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
      itemCount: 6,
      itemBuilder: (context, index) {
        return PodcastsnotificationsItemWidget();
      },
    );
  }
}
