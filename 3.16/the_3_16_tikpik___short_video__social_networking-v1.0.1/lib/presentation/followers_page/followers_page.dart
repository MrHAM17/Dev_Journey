import '../followers_page/widgets/followers_item_widget.dart';
import 'bloc/followers_bloc.dart';
import 'models/followers_item_model.dart';
import 'models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FollowersPage extends StatefulWidget {
  const FollowersPage({Key? key})
      : super(
          key: key,
        );

  @override
  FollowersPageState createState() => FollowersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FollowersBloc>(
      create: (context) => FollowersBloc(FollowersState(
        followersModelObj: FollowersModel(),
      ))
        ..add(FollowersInitialEvent()),
      child: FollowersPage(),
    );
  }
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
      child: BlocSelector<FollowersBloc, FollowersState, FollowersModel?>(
        selector: (state) => state.followersModelObj,
        builder: (context, followersModelObj) {
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
            itemCount: followersModelObj?.followersItemList.length ?? 0,
            itemBuilder: (context, index) {
              FollowersItemModel model =
                  followersModelObj?.followersItemList[index] ??
                      FollowersItemModel();
              return FollowersItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
