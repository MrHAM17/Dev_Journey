import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/socialaccountlink_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/social_account_link_screen/models/social_account_link_model.dart';
part 'social_account_link_state.dart';

final socialAccountLinkNotifier =
    StateNotifierProvider<SocialAccountLinkNotifier, SocialAccountLinkState>(
        (ref) => SocialAccountLinkNotifier(SocialAccountLinkState(
                socialAccountLinkModelObj:
                    SocialAccountLinkModel(socialaccountlinkItemList: [
              SocialaccountlinkItemModel(
                  facebook: ImageConstant.imgLogosFacebook,
                  facebook1: "Facebook",
                  welcomeToFacebook: "Welcome to Facebook",
                  facebook2: ImageConstant.imgGroup1198),
              SocialaccountlinkItemModel(
                  facebook: ImageConstant.imgGroup1194,
                  facebook1: "Instagram",
                  welcomeToFacebook: "Welcome to Instagram",
                  facebook2: ImageConstant.imgGroup1198),
              SocialaccountlinkItemModel(
                  facebook: ImageConstant.imgLogosTwitter,
                  facebook1: "Twitter",
                  welcomeToFacebook: "Welcome to Twitter",
                  facebook2: ImageConstant.imgGroup1198Red800),
              SocialaccountlinkItemModel(
                  facebook: ImageConstant.imgGoogle,
                  facebook1: "Google",
                  welcomeToFacebook: "Welcome to Google",
                  facebook2: ImageConstant.imgGroup1198)
            ]))));

/// A notifier that manages the state of a SocialAccountLink according to the event that is dispatched to it.
class SocialAccountLinkNotifier extends StateNotifier<SocialAccountLinkState> {
  SocialAccountLinkNotifier(SocialAccountLinkState state) : super(state);
}
