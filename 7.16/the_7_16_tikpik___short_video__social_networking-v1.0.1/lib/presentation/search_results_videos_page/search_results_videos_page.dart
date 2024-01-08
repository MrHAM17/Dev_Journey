import '../search_results_videos_page/widgets/searchresultsvideos_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsVideosPage extends StatefulWidget {
  const SearchResultsVideosPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsVideosPageState createState() => SearchResultsVideosPageState();
}

class SearchResultsVideosPageState extends State<SearchResultsVideosPage>
    with AutomaticKeepAliveClientMixin<SearchResultsVideosPage> {
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
              SizedBox(height: 10.v),
              _buildSearchresultsvideos(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultsvideos(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 329.v,
          crossAxisCount: 2,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return SearchresultsvideosItemWidget();
        },
      ),
    );
  }
}
