import '../followers_details_page/widgets/following1_item_widget.dart';
import '../followers_details_page/widgets/ninetyfive_item_widget.dart';
import 'models/followers_details_model.dart';
import 'models/following1_item_model.dart';
import 'models/ninetyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'provider/followers_details_provider.dart';

// ignore_for_file: must_be_immutable
class FollowersDetailsPage extends StatefulWidget {
  const FollowersDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FollowersDetailsPageState createState() => FollowersDetailsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FollowersDetailsProvider(),
      child: FollowersDetailsPage(),
    );
  }
}

class FollowersDetailsPageState extends State<FollowersDetailsPage>
    with AutomaticKeepAliveClientMixin<FollowersDetailsPage> {
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
    return Consumer<FollowersDetailsProvider>(
      builder: (context, provider, child) {
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
          itemCount:
              provider.followersDetailsModelObj.ninetyfiveItemList.length,
          itemBuilder: (context, index) {
            NinetyfiveItemModel model =
                provider.followersDetailsModelObj.ninetyfiveItemList[index];
            return NinetyfiveItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFollowing(BuildContext context) {
    return Consumer<FollowersDetailsProvider>(
      builder: (context, provider, child) {
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
          itemCount:
              provider.followersDetailsModelObj.following1ItemList.length,
          itemBuilder: (context, index) {
            Following1ItemModel model =
                provider.followersDetailsModelObj.following1ItemList[index];
            return Following1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
