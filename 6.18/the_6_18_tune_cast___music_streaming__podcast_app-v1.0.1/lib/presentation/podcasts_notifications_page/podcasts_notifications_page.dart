import '../podcasts_notifications_page/widgets/podcastsnotifications_item_widget.dart';
import 'models/podcastsnotifications_item_model.dart';
import 'notifier/podcasts_notifications_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PodcastsNotificationsPage extends ConsumerStatefulWidget {
  const PodcastsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PodcastsNotificationsPageState createState() =>
      PodcastsNotificationsPageState();
}

class PodcastsNotificationsPageState
    extends ConsumerState<PodcastsNotificationsPage>
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
    return Consumer(
      builder: (context, ref, _) {
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
          itemCount: ref
                  .watch(podcastsNotificationsNotifier)
                  .podcastsNotificationsModelObj
                  ?.podcastsnotificationsItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            PodcastsnotificationsItemModel model = ref
                    .watch(podcastsNotificationsNotifier)
                    .podcastsNotificationsModelObj
                    ?.podcastsnotificationsItemList[index] ??
                PodcastsnotificationsItemModel();
            return PodcastsnotificationsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
