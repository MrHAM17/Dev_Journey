import '../interests_topics_page/widgets/intereststopics_item_widget.dart';
import 'bloc/interests_topics_bloc.dart';
import 'models/interests_topics_model.dart';
import 'models/intereststopics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InterestsTopicsPage extends StatefulWidget {
  const InterestsTopicsPage({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsTopicsPageState createState() => InterestsTopicsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InterestsTopicsBloc>(
      create: (context) => InterestsTopicsBloc(InterestsTopicsState(
        interestsTopicsModelObj: InterestsTopicsModel(),
      ))
        ..add(InterestsTopicsInitialEvent()),
      child: InterestsTopicsPage(),
    );
  }
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
    return BlocSelector<InterestsTopicsBloc, InterestsTopicsState,
        InterestsTopicsModel?>(
      selector: (state) => state.interestsTopicsModelObj,
      builder: (context, interestsTopicsModelObj) {
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
              interestsTopicsModelObj?.intereststopicsItemList.length ?? 0,
          itemBuilder: (context, index) {
            IntereststopicsItemModel model =
                interestsTopicsModelObj?.intereststopicsItemList[index] ??
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
