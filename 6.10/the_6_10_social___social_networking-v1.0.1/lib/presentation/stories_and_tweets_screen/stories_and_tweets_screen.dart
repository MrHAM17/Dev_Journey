import '../stories_and_tweets_screen/widgets/frame1_item_widget.dart';
import '../stories_and_tweets_screen/widgets/live_item_widget.dart';
import 'models/frame1_item_model.dart';
import 'models/live_item_model.dart';
import 'notifier/stories_and_tweets_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';

class StoriesAndTweetsScreen extends ConsumerStatefulWidget {
  const StoriesAndTweetsScreen({Key? key}) : super(key: key);

  @override
  StoriesAndTweetsScreenState createState() => StoriesAndTweetsScreenState();
}

class StoriesAndTweetsScreenState
    extends ConsumerState<StoriesAndTweetsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Column(children: [
                      _buildStories(context),
                      SizedBox(height: 22.v),
                      _buildFrame(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Consumer(builder: (context, ref, _) {
          return AppbarTitleSearchview(
              margin: EdgeInsets.only(left: 16.h),
              hintText: "lbl_search".tr,
              controller: ref.watch(storiesAndTweetsNotifier).searchController);
        }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup9086,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildStories(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Text("lbl_stories".tr, style: theme.textTheme.headlineSmall)),
          SizedBox(height: 19.v),
          SizedBox(
              height: 89.v,
              child: Consumer(builder: (context, ref, _) {
                return ListView.separated(
                    padding: EdgeInsets.only(left: 2.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: ref
                            .watch(storiesAndTweetsNotifier)
                            .storiesAndTweetsModelObj
                            ?.liveItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      LiveItemModel model = ref
                              .watch(storiesAndTweetsNotifier)
                              .storiesAndTweetsModelObj
                              ?.liveItemList[index] ??
                          LiveItemModel();
                      return LiveItemWidget(model);
                    });
              }))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0.v),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                        height: 2.v,
                        thickness: 2.v,
                        color: theme.colorScheme.secondaryContainer)));
          },
          itemCount: ref
                  .watch(storiesAndTweetsNotifier)
                  .storiesAndTweetsModelObj
                  ?.frame1ItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            Frame1ItemModel model = ref
                    .watch(storiesAndTweetsNotifier)
                    .storiesAndTweetsModelObj
                    ?.frame1ItemList[index] ??
                Frame1ItemModel();
            return Frame1ItemWidget(model);
          });
    });
  }
}
