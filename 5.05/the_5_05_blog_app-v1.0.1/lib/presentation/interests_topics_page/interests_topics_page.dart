import '../interests_topics_page/widgets/intereststopics_item_widget.dart';
import 'models/interests_topics_model.dart';
import 'models/intereststopics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'provider/interests_topics_provider.dart';

// ignore_for_file: must_be_immutable
class InterestsTopicsPage extends StatefulWidget {
  const InterestsTopicsPage({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsTopicsPageState createState() => InterestsTopicsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InterestsTopicsProvider(),
      child: InterestsTopicsPage(),
    );
  }
}

class InterestsTopicsPageState extends State<InterestsTopicsPage>
    with AutomaticKeepAliveClientMixin<InterestsTopicsPage> {
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
    return Consumer<InterestsTopicsProvider>(
      builder: (context, provider, child) {
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
          itemCount:
              provider.interestsTopicsModelObj.intereststopicsItemList.length,
          itemBuilder: (context, index) {
            IntereststopicsItemModel model =
                provider.interestsTopicsModelObj.intereststopicsItemList[index];
            return IntereststopicsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
