import '../episode_page/widgets/episode_item_widget.dart';
import 'bloc/episode_bloc.dart';
import 'models/episode_item_model.dart';
import 'models/episode_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

class EpisodePage extends StatefulWidget {
  const EpisodePage({Key? key}) : super(key: key);

  @override
  EpisodePageState createState() => EpisodePageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<EpisodeBloc>(
        create: (context) =>
            EpisodeBloc(EpisodeState(episodeModelObj: EpisodeModel()))
              ..add(EpisodeInitialEvent()),
        child: EpisodePage());
  }
}

class EpisodePageState extends State<EpisodePage>
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
                      child: BlocSelector<EpisodeBloc, EpisodeState,
                              EpisodeModel?>(
                          selector: (state) => state.episodeModelObj,
                          builder: (context, episodeModelObj) {
                            return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: 16.v);
                                },
                                itemCount:
                                    episodeModelObj?.episodeItemList.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  EpisodeItemModel model =
                                      episodeModelObj?.episodeItemList[index] ??
                                          EpisodeItemModel();
                                  return EpisodeItemWidget(model);
                                });
                          }))
                ]))));
  }
}
