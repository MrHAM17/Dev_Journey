import '../search_results_sounds_page/widgets/searchresultssounds_item_widget.dart';
import 'models/search_results_sounds_model.dart';
import 'models/searchresultssounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/search_results_sounds_provider.dart';

// ignore_for_file: must_be_immutable
class SearchResultsSoundsPage extends StatefulWidget {
  const SearchResultsSoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsSoundsPageState createState() => SearchResultsSoundsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchResultsSoundsProvider(),
      child: SearchResultsSoundsPage(),
    );
  }
}

class SearchResultsSoundsPageState extends State<SearchResultsSoundsPage>
    with AutomaticKeepAliveClientMixin<SearchResultsSoundsPage> {
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
      child: Consumer<SearchResultsSoundsProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
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
            itemCount: provider
                .searchResultsSoundsModelObj.searchresultssoundsItemList.length,
            itemBuilder: (context, index) {
              SearchresultssoundsItemModel model = provider
                  .searchResultsSoundsModelObj
                  .searchresultssoundsItemList[index];
              return SearchresultssoundsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
