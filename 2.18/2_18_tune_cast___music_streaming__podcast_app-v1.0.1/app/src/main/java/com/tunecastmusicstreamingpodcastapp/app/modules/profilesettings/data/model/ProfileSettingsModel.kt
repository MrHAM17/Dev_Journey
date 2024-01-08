package com.tunecastmusicstreamingpodcastapp.app.modules.profilesettings.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileSettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMyLibrary: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsley: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_domain_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnjoyAllBenefits: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enjoy_all_benefits)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnjoyListening: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enjoy_listening)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAudioVideo: String? = MyApp.getInstance().resources.getString(R.string.lbl_audio_video)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPlayback: String? = MyApp.getInstance().resources.getString(R.string.lbl_playback)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDataSaverStorage: String? =
      MyApp.getInstance().resources.getString(R.string.msg_data_saver_storage)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurity: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnglishUS: String? = MyApp.getInstance().resources.getString(R.string.lbl_english_us)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDarkMode: String? = MyApp.getInstance().resources.getString(R.string.lbl_dark_mode)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLogout: String? = MyApp.getInstance().resources.getString(R.string.lbl_logout)

)
