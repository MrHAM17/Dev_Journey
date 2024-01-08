import '../history_podcast_page/widgets/historypodcast_item_widget.dart';
import 'models/historypodcast_item_model.dart';
import 'notifier/history_podcast_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryPodcastPage extends ConsumerStatefulWidget {
  const HistoryPodcastPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPodcastPageState createState() => HistoryPodcastPageState();
}

class HistoryPodcastPageState extends ConsumerState<HistoryPodcastPage>
    with AutomaticKeepAliveClientMixin<HistoryPodcastPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildHistoryPodcast(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistoryPodcast(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
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
                      .watch(historyPodcastNotifier)
                      .historyPodcastModelObj
                      ?.historypodcastItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                HistorypodcastItemModel model = ref
                        .watch(historyPodcastNotifier)
                        .historyPodcastModelObj
                        ?.historypodcastItemList[index] ??
                    HistorypodcastItemModel();
                return HistorypodcastItemWidget(
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
