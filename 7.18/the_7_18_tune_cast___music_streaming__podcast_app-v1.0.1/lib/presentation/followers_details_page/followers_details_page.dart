import '../followers_details_page/widgets/following1_item_widget.dart';
import '../followers_details_page/widgets/ninetyfive_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FollowersDetailsPage extends StatefulWidget {
  const FollowersDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FollowersDetailsPageState createState() => FollowersDetailsPageState();
}

class FollowersDetailsPageState extends State<FollowersDetailsPage>
    with AutomaticKeepAliveClientMixin<FollowersDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildNinetyFive(context),
                    SizedBox(height: 24.v),
                    _buildFollowing(context),
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
  Widget _buildNinetyFive(BuildContext context) {
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
      itemCount: 5,
      itemBuilder: (context, index) {
        return NinetyfiveItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildFollowing(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 1.v,
        );
      },
      itemCount: 1,
      itemBuilder: (context, index) {
        return Following1ItemWidget();
      },
    );
  }
}
