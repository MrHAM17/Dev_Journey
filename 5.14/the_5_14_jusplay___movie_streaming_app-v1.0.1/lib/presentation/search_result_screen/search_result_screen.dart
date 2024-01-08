import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'models/search_result_model.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/search_result_provider.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  SearchResultScreenState createState() => SearchResultScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SearchResultProvider(),
        child: SearchResultScreen());
  }
}

class SearchResultScreenState extends State<SearchResultScreen> {
  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.notFoundScreen,
    );
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
        title: Selector<SearchResultProvider, TextEditingController?>(
            selector: (context, provider) => provider.searchController,
            builder: (context, searchController, child) {
              return AppbarTitleSearchview(
                  hintText: "msg_search_by_title".tr,
                  controller: searchController);
            }));
  }

  /// Section Widget
  Widget _buildSearchResult(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Consumer<SearchResultProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 141.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  provider.searchResultModelObj.searchresultItemList.length,
              itemBuilder: (context, index) {
                SearchresultItemModel model =
                    provider.searchResultModelObj.searchresultItemList[index];
                return SearchresultItemWidget(model);
              });
        }));
  }
}
