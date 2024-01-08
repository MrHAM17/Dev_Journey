import '../suggested_page/widgets/suggested_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SuggestedPage extends StatefulWidget {
  const SuggestedPage({Key? key})
      : super(
          key: key,
        );

  @override
  SuggestedPageState createState() => SuggestedPageState();
}

class SuggestedPageState extends State<SuggestedPage>
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
      child: ListView.separated(
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
        itemCount: 6,
        itemBuilder: (context, index) {
          return SuggestedItemWidget();
        },
      ),
    );
  }
}
