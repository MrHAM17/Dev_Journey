import '../episode_page/widgets/episode_item_widget.dart';
import 'models/episode_item_model.dart';
import 'models/episode_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'provider/episode_provider.dart';

class EpisodePage extends StatefulWidget {
  const EpisodePage({Key? key}) : super(key: key);

  @override
  EpisodePageState createState() => EpisodePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EpisodeProvider(), child: EpisodePage());
  }
}

class EpisodePageState extends State<EpisodePage>
    with AutomaticKeepAliveClientMixin<EpisodePage> {
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
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Consumer<EpisodeProvider>(
                          builder: (context, provider, child) {
                        return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 16.v);
                            },
                            itemCount:
                                provider.episodeModelObj.episodeItemList.length,
                            itemBuilder: (context, index) {
                              EpisodeItemModel model = provider
                                  .episodeModelObj.episodeItemList[index];
                              return EpisodeItemWidget(model);
                            });
                      }))
                ]))));
  }
}
