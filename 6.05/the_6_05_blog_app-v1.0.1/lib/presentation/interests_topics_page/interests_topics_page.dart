import '../interests_topics_page/widgets/intereststopics_item_widget.dart';
import 'models/intereststopics_item_model.dart';
import 'notifier/interests_topics_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_05_blog_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InterestsTopicsPage extends ConsumerStatefulWidget {
  const InterestsTopicsPage({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsTopicsPageState createState() => InterestsTopicsPageState();
}

class InterestsTopicsPageState extends ConsumerState<InterestsTopicsPage>
    with AutomaticKeepAliveClientMixin<InterestsTopicsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_arts_entertainment".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                    SizedBox(height: 20.v),
                    _buildInterestsTopics(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestsTopics(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: ref
                  .watch(interestsTopicsNotifier)
                  .interestsTopicsModelObj
                  ?.intereststopicsItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            IntereststopicsItemModel model = ref
                    .watch(interestsTopicsNotifier)
                    .interestsTopicsModelObj
                    ?.intereststopicsItemList[index] ??
                IntereststopicsItemModel();
            return IntereststopicsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
