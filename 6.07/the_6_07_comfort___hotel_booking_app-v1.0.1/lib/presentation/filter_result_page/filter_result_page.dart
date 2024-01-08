import '../filter_result_page/widgets/filterresult_item_widget.dart';
import 'models/filterresult_item_model.dart';
import 'notifier/filter_result_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FilterResultPage extends ConsumerStatefulWidget {
  const FilterResultPage({Key? key})
      : super(
          key: key,
        );

  @override
  FilterResultPageState createState() => FilterResultPageState();
}

class FilterResultPageState extends ConsumerState<FilterResultPage>
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
          Consumer(
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
                        .watch(filterResultNotifier)
                        .filterResultModelObj
                        ?.filterresultItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  FilterresultItemModel model = ref
                          .watch(filterResultNotifier)
                          .filterResultModelObj
                          ?.filterresultItemList[index] ??
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
