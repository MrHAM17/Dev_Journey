import '../home_page/widgets/aladdin_item_widget.dart';
import '../home_page/widgets/frame_item_widget.dart';
import 'models/aladdin_item_model.dart';
import 'models/frame_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'provider/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomePage());
  }
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.profilePage,
    ); // TODO: implement Actions
    NavigatorService.pushNamed(
      AppRoutes.savedPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.searchPage,
    ); // TODO: implement Actions
  }

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
                      latestMovies: "lbl_most_popular".tr,
                      seeAll: "lbl_see_all".tr)),
              SizedBox(height: 9.v),
              SizedBox(
                  height: 178.v,
                  child: Consumer<HomeProvider>(
                      builder: (context, provider, child) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 16.h);
                        },
                        itemCount: provider.homeModelObj.frameItemList.length,
                        itemBuilder: (context, index) {
                          FrameItemModel model =
                              provider.homeModelObj.frameItemList[index];
                          return FrameItemWidget(model);
                        });
                  }))
            ]),
            SizedBox(height: 19.v),
            Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: _buildFrame(context,
                    latestMovies: "lbl_latest_movies".tr,
                    seeAll: "lbl_see_all".tr)),
            SizedBox(height: 7.v),
            SizedBox(
                height: 178.v,
                child:
                    Consumer<HomeProvider>(builder: (context, provider, child) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 16.h);
                      },
                      itemCount: provider.homeModelObj.aladdinItemList.length,
                      itemBuilder: (context, index) {
                        AladdinItemModel model =
                            provider.homeModelObj.aladdinItemList[index];
                        return AladdinItemWidget(model);
                      });
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
