import '../search_results_top_page/widgets/autolayouthorizontal_item_widget.dart';
import '../search_results_top_page/widgets/follow_item_widget.dart';
import 'models/autolayouthorizontal_item_model.dart';
import 'models/follow_item_model.dart';
import 'models/search_results_top_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/search_results_top_provider.dart';

// ignore_for_file: must_be_immutable
class SearchResultsTopPage extends StatefulWidget {
  const SearchResultsTopPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsTopPageState createState() => SearchResultsTopPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchResultsTopProvider(),
      child: SearchResultsTopPage(),
    );
  }
}

class SearchResultsTopPageState extends State<SearchResultsTopPage>
    with AutomaticKeepAliveClientMixin<SearchResultsTopPage> {
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
          Consumer<SearchResultsTopProvider>(
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
                    provider.searchResultsTopModelObj.followItemList.length,
                itemBuilder: (context, index) {
                  FollowItemModel model =
                      provider.searchResultsTopModelObj.followItemList[index];
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
            child: Consumer<SearchResultsTopProvider>(
              builder: (context, provider, child) {
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
                  itemCount: provider.searchResultsTopModelObj
                      .autolayouthorizontalItemList.length,
                  itemBuilder: (context, index) {
                    AutolayouthorizontalItemModel model = provider
                        .searchResultsTopModelObj
                        .autolayouthorizontalItemList[index];
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
