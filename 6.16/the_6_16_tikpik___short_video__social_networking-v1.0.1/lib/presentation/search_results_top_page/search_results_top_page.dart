import '../search_results_top_page/widgets/autolayouthorizontal_item_widget.dart';
import '../search_results_top_page/widgets/follow_item_widget.dart';
import 'models/autolayouthorizontal_item_model.dart';
import 'models/follow_item_model.dart';
import 'notifier/search_results_top_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsTopPage extends ConsumerStatefulWidget {
  const SearchResultsTopPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsTopPageState createState() => SearchResultsTopPageState();
}

class SearchResultsTopPageState extends ConsumerState<SearchResultsTopPage>
    with AutomaticKeepAliveClientMixin<SearchResultsTopPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildFollow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_users".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          Consumer(
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
                        .watch(searchResultsTopNotifier)
                        .searchResultsTopModelObj
                        ?.followItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  FollowItemModel model = ref
                          .watch(searchResultsTopNotifier)
                          .searchResultsTopModelObj
                          ?.followItemList[index] ??
                      FollowItemModel();
                  return FollowItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 31.v),
          Text(
            "lbl_videos".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 200.v,
            child: Consumer(
              builder: (context, ref, _) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 8.h,
                    );
                  },
                  itemCount: ref
                          .watch(searchResultsTopNotifier)
                          .searchResultsTopModelObj
                          ?.autolayouthorizontalItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    AutolayouthorizontalItemModel model = ref
                            .watch(searchResultsTopNotifier)
                            .searchResultsTopModelObj
                            ?.autolayouthorizontalItemList[index] ??
                        AutolayouthorizontalItemModel();
                    return AutolayouthorizontalItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
