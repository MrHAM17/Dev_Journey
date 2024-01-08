package com.tikpikshortvideosocialnetworking.app.modules.privacy.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class PrivacyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_privacy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscoverability: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_discoverability)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrivateAccount: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_private_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSuggestAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_suggest_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSyncContacts: String? = MyApp.getInstance().resources.getString(R.string.msg_sync_contacts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLocationServices: String? =
      MyApp.getInstance().resources.getString(R.string.msg_location_services)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPersonalization: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_personalization)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAdsPersonalization: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ads_personalization)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuickUpload: String? = MyApp.getInstance().resources.getString(R.string.lbl_quick_upload)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloadYourData: String? =
      MyApp.getInstance().resources.getString(R.string.msg_download_your_data)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSafety: String? = MyApp.getInstance().resources.getString(R.string.lbl_safety)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloads: String? = MyApp.getInstance().resources.getString(R.string.lbl_downloads)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComments: String? = MyApp.getInstance().resources.getString(R.string.lbl_comments2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMentionsTags: String? = MyApp.getInstance().resources.getString(R.string.lbl_mentions_tags)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowingList: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_following_list)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuet: String? = MyApp.getInstance().resources.getString(R.string.lbl_duet)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedVideo: String? = MyApp.getInstance().resources.getString(R.string.lbl_liked_video)

)
