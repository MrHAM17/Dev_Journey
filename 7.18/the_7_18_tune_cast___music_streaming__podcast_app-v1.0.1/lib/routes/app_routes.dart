import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/walkthrough_screen/walkthrough_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/lets_you_in_screen/lets_you_in_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/profile_screen/profile_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/create_new_pin_screen/create_new_pin_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/set_fingerprint_screen/set_fingerprint_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/follow_artists_screen/follow_artists_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/filled_otp_screen/filled_otp_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/podcasts_notifications_tab_container_screen/podcasts_notifications_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/trending_now_screen/trending_now_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/popular_artists_screen/popular_artists_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/charts_screen/charts_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/top_albums_global_screen/top_albums_global_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/podcasts_screen/podcasts_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/new_releases_screen/new_releases_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/search_type_keyword_screen/search_type_keyword_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_tab_container_screen/search_not_found_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/song_play_screen/song_play_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/search_results_songs_tab_container_screen/search_results_songs_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/song_details_screen/song_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/lyrics_screen/lyrics_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/artist_details_screen/artist_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/album_details_screen/album_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/podcast_details_screen/podcast_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/podcast_episode_details_screen/podcast_episode_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/playlist_details_one_screen/playlist_details_one_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/search_result_profile_tab_container_screen/search_result_profile_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_tab_container_screen/followers_details_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/history_podcast_tab_container_screen/history_podcast_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/playlists_screen/playlists_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/playlist_details_screen/playlist_details_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/downloads_screen/downloads_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/your_likes_tab_container_screen/your_likes_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/albums_screen/albums_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/songs_screen/songs_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/artists_tab_container_screen/artists_tab_container_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/subscribe_screen/subscribe_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/select_payment_method_screen/select_payment_method_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/payment_summary_screen/payment_summary_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_one_screen/profile_details_one_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/audio_video_screen/audio_video_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/playback_screen/playback_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/data_saver_storage_screen/data_saver_storage_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/security_screen/security_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/language_screen/language_screen.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String walkthroughScreen = '/walkthrough_screen';

  static const String letsYouInScreen = '/lets_you_in_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String profileScreen = '/profile_screen';

  static const String createNewPinScreen = '/create_new_pin_screen';

  static const String setFingerprintScreen = '/set_fingerprint_screen';

  static const String followArtistsScreen = '/follow_artists_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String filledOtpScreen = '/filled_otp_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String songsNotificationsPage = '/songs_notifications_page';

  static const String podcastsNotificationsPage =
      '/podcasts_notifications_page';

  static const String podcastsNotificationsTabContainerScreen =
      '/podcasts_notifications_tab_container_screen';

  static const String trendingNowScreen = '/trending_now_screen';

  static const String popularArtistsScreen = '/popular_artists_screen';

  static const String chartsScreen = '/charts_screen';

  static const String topAlbumsGlobalScreen = '/top_albums_global_screen';

  static const String podcastsScreen = '/podcasts_screen';

  static const String newReleasesScreen = '/new_releases_screen';

  static const String explorePage = '/explore_page';

  static const String searchTypeKeywordScreen = '/search_type_keyword_screen';

  static const String searchNotFoundPage = '/search_not_found_page';

  static const String searchNotFoundTabContainerScreen =
      '/search_not_found_tab_container_screen';

  static const String searchResultTopPage = '/search_result_top_page';

  static const String songPlayScreen = '/song_play_screen';

  static const String searchResultsSongsPage = '/search_results_songs_page';

  static const String searchResultsSongsTabContainerScreen =
      '/search_results_songs_tab_container_screen';

  static const String songPlayOverScreenPage = '/song_play_over_screen_page';

  static const String songDetailsScreen = '/song_details_screen';

  static const String lyricsScreen = '/lyrics_screen';

  static const String artistSearchResultPage = '/artist_search_result_page';

  static const String artistDetailsScreen = '/artist_details_screen';

  static const String searchResultAlbumPage = '/search_result_album_page';

  static const String albumDetailsScreen = '/album_details_screen';

  static const String searchResultPodcastPage = '/search_result_podcast_page';

  static const String podcastDetailsScreen = '/podcast_details_screen';

  static const String podcastEpisodeDetailsScreen =
      '/podcast_episode_details_screen';

  static const String searchResultPlaylistPage = '/search_result_playlist_page';

  static const String playlistDetailsOneScreen = '/playlist_details_one_screen';

  static const String searchResultProfilePage = '/search_result_profile_page';

  static const String searchResultProfileTabContainerScreen =
      '/search_result_profile_tab_container_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String followersDetailsPage = '/followers_details_page';

  static const String followersDetailsTabContainerScreen =
      '/followers_details_tab_container_screen';

  static const String myLibraryPage = '/my_library_page';

  static const String historyMusicPage = '/history_music_page';

  static const String historyPodcastPage = '/history_podcast_page';

  static const String historyPodcastTabContainerScreen =
      '/history_podcast_tab_container_screen';

  static const String playlistsScreen = '/playlists_screen';

  static const String playlistDetailsScreen = '/playlist_details_screen';

  static const String downloadsScreen = '/downloads_screen';

  static const String yourLikesPage = '/your_likes_page';

  static const String yourLikesTabContainerScreen =
      '/your_likes_tab_container_screen';

  static const String queuePage = '/queue_page';

  static const String downloadedPage = '/downloaded_page';

  static const String albumsScreen = '/albums_screen';

  static const String songsScreen = '/songs_screen';

  static const String artistsPage = '/artists_page';

  static const String artistsTabContainerScreen =
      '/artists_tab_container_screen';

  static const String podcastersPage = '/podcasters_page';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String subscribeScreen = '/subscribe_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String selectPaymentMethodScreen =
      '/select_payment_method_screen';

  static const String paymentSummaryScreen = '/payment_summary_screen';

  static const String profileDetailsOneScreen = '/profile_details_one_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String audioVideoScreen = '/audio_video_screen';

  static const String playbackScreen = '/playback_screen';

  static const String dataSaverStorageScreen = '/data_saver_storage_screen';

  static const String securityScreen = '/security_screen';

  static const String languageScreen = '/language_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    walkthroughScreen: (context) => WalkthroughScreen(),
    letsYouInScreen: (context) => LetsYouInScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    profileScreen: (context) => ProfileScreen(),
    createNewPinScreen: (context) => CreateNewPinScreen(),
    setFingerprintScreen: (context) => SetFingerprintScreen(),
    followArtistsScreen: (context) => FollowArtistsScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    filledOtpScreen: (context) => FilledOtpScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    podcastsNotificationsTabContainerScreen: (context) =>
        PodcastsNotificationsTabContainerScreen(),
    trendingNowScreen: (context) => TrendingNowScreen(),
    popularArtistsScreen: (context) => PopularArtistsScreen(),
    chartsScreen: (context) => ChartsScreen(),
    topAlbumsGlobalScreen: (context) => TopAlbumsGlobalScreen(),
    podcastsScreen: (context) => PodcastsScreen(),
    newReleasesScreen: (context) => NewReleasesScreen(),
    searchTypeKeywordScreen: (context) => SearchTypeKeywordScreen(),
    searchNotFoundTabContainerScreen: (context) =>
        SearchNotFoundTabContainerScreen(),
    songPlayScreen: (context) => SongPlayScreen(),
    searchResultsSongsTabContainerScreen: (context) =>
        SearchResultsSongsTabContainerScreen(),
    songDetailsScreen: (context) => SongDetailsScreen(),
    lyricsScreen: (context) => LyricsScreen(),
    artistDetailsScreen: (context) => ArtistDetailsScreen(),
    albumDetailsScreen: (context) => AlbumDetailsScreen(),
    podcastDetailsScreen: (context) => PodcastDetailsScreen(),
    podcastEpisodeDetailsScreen: (context) => PodcastEpisodeDetailsScreen(),
    playlistDetailsOneScreen: (context) => PlaylistDetailsOneScreen(),
    searchResultProfileTabContainerScreen: (context) =>
        SearchResultProfileTabContainerScreen(),
    profileDetailsScreen: (context) => ProfileDetailsScreen(),
    followersDetailsTabContainerScreen: (context) =>
        FollowersDetailsTabContainerScreen(),
    historyPodcastTabContainerScreen: (context) =>
        HistoryPodcastTabContainerScreen(),
    playlistsScreen: (context) => PlaylistsScreen(),
    playlistDetailsScreen: (context) => PlaylistDetailsScreen(),
    downloadsScreen: (context) => DownloadsScreen(),
    yourLikesTabContainerScreen: (context) => YourLikesTabContainerScreen(),
    albumsScreen: (context) => AlbumsScreen(),
    songsScreen: (context) => SongsScreen(),
    artistsTabContainerScreen: (context) => ArtistsTabContainerScreen(),
    subscribeScreen: (context) => SubscribeScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    selectPaymentMethodScreen: (context) => SelectPaymentMethodScreen(),
    paymentSummaryScreen: (context) => PaymentSummaryScreen(),
    profileDetailsOneScreen: (context) => ProfileDetailsOneScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    notificationSettingsScreen: (context) => NotificationSettingsScreen(),
    audioVideoScreen: (context) => AudioVideoScreen(),
    playbackScreen: (context) => PlaybackScreen(),
    dataSaverStorageScreen: (context) => DataSaverStorageScreen(),
    securityScreen: (context) => SecurityScreen(),
    languageScreen: (context) => LanguageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
