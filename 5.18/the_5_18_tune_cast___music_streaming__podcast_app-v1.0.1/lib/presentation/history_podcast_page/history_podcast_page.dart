import '../history_podcast_page/widgets/historypodcast_item_widget.dart';
import 'models/history_podcast_model.dart';
import 'models/historypodcast_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'provider/history_podcast_provider.dart';

// ignore_for_file: must_be_immutable
class HistoryPodcastPage extends StatefulWidget {
  const HistoryPodcastPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPodcastPageState createState() => HistoryPodcastPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryPodcastProvider(),
      child: HistoryPodcastPage(),
    );
  }
}

class HistoryPodcastPageState extends State<HistoryPodcastPage>
    with AutomaticKeepAliveClientMixin<HistoryPodcastPage> {
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
        child: Consumer<HistoryPodcastProvider>(
          builder: (context, provider, child) {
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
              itemCount:
                  provider.historyPodcastModelObj.historypodcastItemList.length,
              itemBuilder: (context, index) {
                HistorypodcastItemModel model = provider
                    .historyPodcastModelObj.historypodcastItemList[index];
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
