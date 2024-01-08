import '../home_page/widgets/aladdin_item_widget.dart';
import '../home_page/widgets/frame_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildScrollView(context)));
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 26.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: _buildFrame(context,
                      latestMovies: "Most Popular", seeAll: "See all")),
              SizedBox(height: 9.v),
              SizedBox(
                  height: 178.v,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 16.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return FrameItemWidget();
                      }))
            ]),
            SizedBox(height: 19.v),
            Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: _buildFrame(context,
                    latestMovies: "Latest Movies", seeAll: "See all")),
            SizedBox(height: 7.v),
            SizedBox(
                height: 178.v,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return AladdinItemWidget();
                    }))
          ]))
    ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String latestMovies,
    required String seeAll,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(latestMovies,
              style: CustomTextStyles.titleMediumSemiBold
                  .copyWith(color: appTheme.whiteA700)),
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(seeAll,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.whiteA700)))
        ]);
  }
}
