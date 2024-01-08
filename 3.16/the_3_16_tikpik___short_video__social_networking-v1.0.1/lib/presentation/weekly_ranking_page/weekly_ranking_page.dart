import '../weekly_ranking_page/widgets/weeklyranking_item_widget.dart';
import 'bloc/weekly_ranking_bloc.dart';
import 'models/weekly_ranking_model.dart';
import 'models/weeklyranking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WeeklyRankingPage extends StatefulWidget {
  const WeeklyRankingPage({Key? key})
      : super(
          key: key,
        );

  @override
  WeeklyRankingPageState createState() => WeeklyRankingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklyRankingBloc>(
      create: (context) => WeeklyRankingBloc(WeeklyRankingState(
        weeklyRankingModelObj: WeeklyRankingModel(),
      ))
        ..add(WeeklyRankingInitialEvent()),
      child: WeeklyRankingPage(),
    );
  }
}

class WeeklyRankingPageState extends State<WeeklyRankingPage>
    with AutomaticKeepAliveClientMixin<WeeklyRankingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSeeLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSeeLive,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 24.v),
                _buildWeeklyRanking(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeeklyRanking(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<WeeklyRankingBloc, WeeklyRankingState,
          WeeklyRankingModel?>(
        selector: (state) => state.weeklyRankingModelObj,
        builder: (context, weeklyRankingModelObj) {
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
            itemCount: weeklyRankingModelObj?.weeklyrankingItemList.length ?? 0,
            itemBuilder: (context, index) {
              WeeklyrankingItemModel model =
                  weeklyRankingModelObj?.weeklyrankingItemList[index] ??
                      WeeklyrankingItemModel();
              return WeeklyrankingItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
