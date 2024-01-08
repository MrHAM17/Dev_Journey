import '../search_page/widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/search_provider.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: SearchPage(),
    );
  }
}

class SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
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
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildSearch(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Consumer<SearchProvider>(
          builder: (context, provider, child) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 470.v,
                crossAxisCount: 1,
                mainAxisSpacing: 1.h,
                crossAxisSpacing: 1.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: provider.searchModelObj.searchItemList.length,
              itemBuilder: (context, index) {
                SearchItemModel model =
                    provider.searchModelObj.searchItemList[index];
                return SearchItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
