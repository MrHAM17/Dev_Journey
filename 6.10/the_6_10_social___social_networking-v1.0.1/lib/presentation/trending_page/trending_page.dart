import '../trending_page/widgets/trending_item_widget.dart';
import 'models/trending_item_model.dart';
import 'notifier/trending_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends ConsumerStatefulWidget {
  const TrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPageState createState() => TrendingPageState();
}

class TrendingPageState extends ConsumerState<TrendingPage>
    with AutomaticKeepAliveClientMixin<TrendingPage> {
  @override
  bool get wantKeepAlive => true;
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
        child: Consumer(
          builder: (context, ref, _) {
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
              itemCount: ref
                      .watch(trendingNotifier)
                      .trendingModelObj
                      ?.trendingItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                TrendingItemModel model = ref
                        .watch(trendingNotifier)
                        .trendingModelObj
                        ?.trendingItemList[index] ??
                    TrendingItemModel();
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
