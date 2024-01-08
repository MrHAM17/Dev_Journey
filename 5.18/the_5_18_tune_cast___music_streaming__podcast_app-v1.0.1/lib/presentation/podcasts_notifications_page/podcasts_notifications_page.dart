import '../podcasts_notifications_page/widgets/podcastsnotifications_item_widget.dart';
import 'models/podcasts_notifications_model.dart';
import 'models/podcastsnotifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'provider/podcasts_notifications_provider.dart';

// ignore_for_file: must_be_immutable
class PodcastsNotificationsPage extends StatefulWidget {
  const PodcastsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PodcastsNotificationsPageState createState() =>
      PodcastsNotificationsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PodcastsNotificationsProvider(),
      child: PodcastsNotificationsPage(),
    );
  }
}

class PodcastsNotificationsPageState extends State<PodcastsNotificationsPage>
    with AutomaticKeepAliveClientMixin<PodcastsNotificationsPage> {
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
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_podcasts_release".tr,
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
    return Consumer<PodcastsNotificationsProvider>(
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
          itemCount: provider.podcastsNotificationsModelObj
              .podcastsnotificationsItemList.length,
          itemBuilder: (context, index) {
            PodcastsnotificationsItemModel model = provider
                .podcastsNotificationsModelObj
                .podcastsnotificationsItemList[index];
            return PodcastsnotificationsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
