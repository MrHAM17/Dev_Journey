import '../search_results_top_page/widgets/autolayouthorizontal_item_widget.dart';
import '../search_results_top_page/widgets/follow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsTopPage extends StatefulWidget {
  const SearchResultsTopPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsTopPageState createState() => SearchResultsTopPageState();
}

class SearchResultsTopPageState extends State<SearchResultsTopPage>
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
            "Users",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          ListView.separated(
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
              return FollowItemWidget();
            },
          ),
          SizedBox(height: 31.v),
          Text(
            "Videos",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 200.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 8.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return AutolayouthorizontalItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
