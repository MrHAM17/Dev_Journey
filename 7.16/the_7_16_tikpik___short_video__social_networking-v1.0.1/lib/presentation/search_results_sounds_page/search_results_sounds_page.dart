import '../search_results_sounds_page/widgets/searchresultssounds_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsSoundsPage extends StatefulWidget {
  const SearchResultsSoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsSoundsPageState createState() => SearchResultsSoundsPageState();
}

class SearchResultsSoundsPageState extends State<SearchResultsSoundsPage>
    with AutomaticKeepAliveClientMixin<SearchResultsSoundsPage> {
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
              _buildSearchresultssounds(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultssounds(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return SearchresultssoundsItemWidget();
        },
      ),
    );
  }
}
