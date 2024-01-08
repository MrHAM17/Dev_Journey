import '../interests_topics_page/widgets/intereststopics_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InterestsTopicsPage extends StatefulWidget {
  const InterestsTopicsPage({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsTopicsPageState createState() => InterestsTopicsPageState();
}

class InterestsTopicsPageState extends State<InterestsTopicsPage>
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
                      "ARTS & ENTERTAINMENT",
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
      itemCount: 10,
      itemBuilder: (context, index) {
        return IntereststopicsItemWidget();
      },
    );
  }
}
