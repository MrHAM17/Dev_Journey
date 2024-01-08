import '../search_results_top_page/widgets/autolayouthorizontal_item_widget.dart';
import '../search_results_top_page/widgets/follow_item_widget.dart';
import 'bloc/search_results_top_bloc.dart';
import 'models/autolayouthorizontal_item_model.dart';
import 'models/follow_item_model.dart';
import 'models/search_results_top_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsTopPage extends StatefulWidget {
  const SearchResultsTopPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsTopPageState createState() => SearchResultsTopPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsTopBloc>(
      create: (context) => SearchResultsTopBloc(SearchResultsTopState(
        searchResultsTopModelObj: SearchResultsTopModel(),
      ))
        ..add(SearchResultsTopInitialEvent()),
      child: SearchResultsTopPage(),
    );
  }
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
            "lbl_users".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          BlocSelector<SearchResultsTopBloc, SearchResultsTopState,
              SearchResultsTopModel?>(
            selector: (state) => state.searchResultsTopModelObj,
            builder: (context, searchResultsTopModelObj) {
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
                itemCount: searchResultsTopModelObj?.followItemList.length ?? 0,
                itemBuilder: (context, index) {
                  FollowItemModel model =
                      searchResultsTopModelObj?.followItemList[index] ??
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
            child: BlocSelector<SearchResultsTopBloc, SearchResultsTopState,
                SearchResultsTopModel?>(
              selector: (state) => state.searchResultsTopModelObj,
              builder: (context, searchResultsTopModelObj) {
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
                  itemCount: searchResultsTopModelObj
                          ?.autolayouthorizontalItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    AutolayouthorizontalItemModel model =
                        searchResultsTopModelObj
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
