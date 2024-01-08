package com.tunecastmusicstreamingpodcastapp.app.modules.notificationsettings.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationSettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.msg_notification_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecommendedMusic: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recommended_music)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPushEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_push_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewMusic: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_music)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPush: String? = MyApp.getInstance().resources.getString(R.string.lbl_push)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPlaylistUpdates: String? =
      MyApp.getInstance().resources.getString(R.string.msg_playlist_updates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPushEmail1: String? = MyApp.getInstance().resources.getString(R.string.lbl_push_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConcertNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.msg_concert_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPushEmail2: String? = MyApp.getInstance().resources.getString(R.string.lbl_push_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistUpdates: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_artist_updates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPushEmail3: String? = MyApp.getInstance().resources.getString(R.string.lbl_push_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProductNews: String? = MyApp.getInstance().resources.getString(R.string.lbl_product_news)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHearmeOffers: String? = MyApp.getInstance().resources.getString(R.string.lbl_hearme_offers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPushEmail4: String? = MyApp.getInstance().resources.getString(R.string.lbl_push_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewEpisodes: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_episodes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPushEmail5: String? = MyApp.getInstance().resources.getString(R.string.lbl_push_email)

)
