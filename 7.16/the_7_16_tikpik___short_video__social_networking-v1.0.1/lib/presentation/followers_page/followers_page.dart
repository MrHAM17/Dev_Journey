import '../followers_page/widgets/followers_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FollowersPage extends StatefulWidget {
  const FollowersPage({Key? key})
      : super(
          key: key,
        );

  @override
  FollowersPageState createState() => FollowersPageState();
}

class FollowersPageState extends State<FollowersPage>
    with AutomaticKeepAliveClientMixin<FollowersPage> {
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
              _buildFollowers(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowers(BuildContext context) {
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
          return FollowersItemWidget();
        },
      ),
    );
  }
}
