import '../episode_page/widgets/episode_item_widget.dart';
import 'models/episode_item_model.dart';
import 'notifier/episode_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

class EpisodePage extends ConsumerStatefulWidget {
  const EpisodePage({Key? key}) : super(key: key);

  @override
  EpisodePageState createState() => EpisodePageState();
}

class EpisodePageState extends ConsumerState<EpisodePage>
    with AutomaticKeepAliveClientMixin<EpisodePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Consumer(builder: (context, ref, _) {
                        return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 16.v);
                            },
                            itemCount: ref
                                    .watch(episodeNotifier)
                                    .episodeModelObj
                                    ?.episodeItemList
                                    .length ??
                                0,
                            itemBuilder: (context, index) {
                              EpisodeItemModel model = ref
                                      .watch(episodeNotifier)
                                      .episodeModelObj
                                      ?.episodeItemList[index] ??
                                  EpisodeItemModel();
                              return EpisodeItemWidget(model);
                            });
                      }))
                ]))));
  }
}
