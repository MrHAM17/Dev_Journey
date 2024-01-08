import '../trending_page/widgets/trending_item_widget.dart';
import 'bloc/trending_bloc.dart';
import 'models/trending_item_model.dart';
import 'models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_10_social___social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPageState createState() => TrendingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingBloc>(
      create: (context) => TrendingBloc(TrendingState(
        trendingModelObj: TrendingModel(),
      ))
        ..add(TrendingInitialEvent()),
      child: TrendingPage(),
    );
  }
}

class TrendingPageState extends State<TrendingPage>
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
        child: BlocSelector<TrendingBloc, TrendingState, TrendingModel?>(
          selector: (state) => state.trendingModelObj,
          builder: (context, trendingModelObj) {
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
              itemCount: trendingModelObj?.trendingItemList.length ?? 0,
              itemBuilder: (context, index) {
                TrendingItemModel model =
                    trendingModelObj?.trendingItemList[index] ??
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
