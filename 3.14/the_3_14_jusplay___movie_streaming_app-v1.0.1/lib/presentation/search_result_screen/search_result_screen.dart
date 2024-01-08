import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'bloc/search_result_bloc.dart';
import 'models/search_result_model.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultBloc>(
        create: (context) => SearchResultBloc(
            SearchResultState(searchResultModelObj: SearchResultModel()))
          ..add(SearchResultInitialEvent()),
        child: SearchResultScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_results_for_comedy".tr,
                          style: CustomTextStyles.bodyMediumWhiteA700),
                      SizedBox(height: 15.v),
                      _buildSearchResult(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        centerTitle: true,
        title: BlocSelector<SearchResultBloc, SearchResultState,
                TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleSearchview(
                  hintText: "msg_search_by_title".tr,
                  controller: searchController);
            }));
  }

  /// Section Widget
  Widget _buildSearchResult(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: BlocSelector<SearchResultBloc, SearchResultState,
                SearchResultModel?>(
            selector: (state) => state.searchResultModelObj,
            builder: (context, searchResultModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 141.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      searchResultModelObj?.searchresultItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SearchresultItemModel model =
                        searchResultModelObj?.searchresultItemList[index] ??
                            SearchresultItemModel();
                    return SearchresultItemWidget(model);
                  });
            }));
  }
}
