import '../filter_result_page/widgets/filterresult_item_widget.dart';
import 'bloc/filter_result_bloc.dart';
import 'models/filter_result_model.dart';
import 'models/filterresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FilterResultPage extends StatefulWidget {
  const FilterResultPage({Key? key})
      : super(
          key: key,
        );

  @override
  FilterResultPageState createState() => FilterResultPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FilterResultBloc>(
      create: (context) => FilterResultBloc(FilterResultState(
        filterResultModelObj: FilterResultModel(),
      ))
        ..add(FilterResultInitialEvent()),
      child: FilterResultPage(),
    );
  }
}

class FilterResultPageState extends State<FilterResultPage>
    with AutomaticKeepAliveClientMixin<FilterResultPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                _buildRecommended(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommended(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_recommended_586_379".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 28.adaptSize,
                width: 28.adaptSize,
                padding: EdgeInsets.all(2.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserPrimary28x28,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          BlocSelector<FilterResultBloc, FilterResultState, FilterResultModel?>(
            selector: (state) => state.filterResultModelObj,
            builder: (context, filterResultModelObj) {
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
                itemCount:
                    filterResultModelObj?.filterresultItemList.length ?? 0,
                itemBuilder: (context, index) {
                  FilterresultItemModel model =
                      filterResultModelObj?.filterresultItemList[index] ??
                          FilterresultItemModel();
                  return FilterresultItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
