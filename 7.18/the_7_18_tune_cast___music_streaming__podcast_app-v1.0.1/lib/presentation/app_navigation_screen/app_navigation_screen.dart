import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "walkthrough",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walkthroughScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Lets you in",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.letsYouInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New PIN",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Set Fingerprint",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Follow Artists",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.followArtistsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FIlled OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filledOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Podcasts Notifications - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .podcastsNotificationsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trending Now",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trendingNowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Popular Artists",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.popularArtistsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Charts",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chartsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Top Albums Global",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topAlbumsGlobalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Podcasts",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.podcastsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "New Releases",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newReleasesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Type Keyword",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchTypeKeywordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Not Found - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.searchNotFoundTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Song Play",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.songPlayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Results Songs - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.searchResultsSongsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Song Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.songDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Lyrics",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.lyricsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Artist Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.artistDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "album details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.albumDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Podcast Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.podcastDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Podcast Episode Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.podcastEpisodeDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Playlist Details One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.playlistDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Result Profile - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.searchResultProfileTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Followers Details - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.followersDetailsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History Podcast - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.historyPodcastTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Playlists",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.playlistsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Playlist Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.playlistDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Downloads",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.downloadsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Your Likes - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.yourLikesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Albums",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.albumsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Songs",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.songsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Artists - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.artistsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscribe",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.subscribeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Method",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select Payment Method",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectPaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Summary",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentSummaryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Details One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Audio & Video",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.audioVideoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Playback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.playbackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Data Saver & Storage",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dataSaverStorageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Security",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
