import '../history_podcast_page/widgets/historypodcast_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryPodcastPage extends StatefulWidget {
  const HistoryPodcastPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPodcastPageState createState() => HistoryPodcastPageState();
}

class HistoryPodcastPageState extends State<HistoryPodcastPage>
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
        child: ListView.separated(
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
          itemCount: 2,
          itemBuilder: (context, index) {
            return HistorypodcastItemWidget();
          },
        ),
      ),
    );
  }
}
