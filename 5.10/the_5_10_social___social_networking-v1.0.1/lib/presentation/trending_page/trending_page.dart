import '../trending_page/widgets/trending_item_widget.dart';
import 'models/trending_item_model.dart';
import 'models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'provider/trending_provider.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPageState createState() => TrendingPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TrendingProvider(),
      child: TrendingPage(),
    );
  }
}

class TrendingPageState extends State<TrendingPage>
    with AutomaticKeepAliveClientMixin<TrendingPage> {
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
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildTrending(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrending(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Consumer<TrendingProvider>(
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
              itemCount: provider.trendingModelObj.trendingItemList.length,
              itemBuilder: (context, index) {
                TrendingItemModel model =
                    provider.trendingModelObj.trendingItemList[index];
                return TrendingItemWidget(
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
