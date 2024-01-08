import '../suggested_page/widgets/suggested_item_widget.dart';
import 'models/suggested_item_model.dart';
import 'notifier/suggested_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SuggestedPage extends ConsumerStatefulWidget {
  const SuggestedPage({Key? key})
      : super(
          key: key,
        );

  @override
  SuggestedPageState createState() => SuggestedPageState();
}

class SuggestedPageState extends ConsumerState<SuggestedPage>
    with AutomaticKeepAliveClientMixin<SuggestedPage> {
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
              _buildSuggested(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSuggested(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer(
        builder: (context, ref, _) {
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
            itemCount: ref
                    .watch(suggestedNotifier)
                    .suggestedModelObj
                    ?.suggestedItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              SuggestedItemModel model = ref
                      .watch(suggestedNotifier)
                      .suggestedModelObj
                      ?.suggestedItemList[index] ??
                  SuggestedItemModel();
              return SuggestedItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
