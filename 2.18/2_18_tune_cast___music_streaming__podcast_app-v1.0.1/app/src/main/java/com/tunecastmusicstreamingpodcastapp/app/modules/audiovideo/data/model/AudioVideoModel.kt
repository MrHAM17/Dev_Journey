package com.tunecastmusicstreamingpodcastapp.app.modules.audiovideo.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class AudioVideoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_audio_video)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAudioQuality: String? = MyApp.getInstance().resources.getString(R.string.lbl_audio_quality)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWiFiStreaming: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_wi_fi_streaming)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHigh: String? = MyApp.getInstance().resources.getString(R.string.lbl_high)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDataCellularStreaming: String? =
      MyApp.getInstance().resources.getString(R.string.msg_data_cellular_streaming)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAutomatic: String? = MyApp.getInstance().resources.getString(R.string.lbl_automatic)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAutoAdjustQuality: String? =
      MyApp.getInstance().resources.getString(R.string.msg_auto_adjust_quality)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownload: String? = MyApp.getInstance().resources.getString(R.string.lbl_download)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNormal: String? = MyApp.getInstance().resources.getString(R.string.lbl_normal)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloadOnlyUsing: String? =
      MyApp.getInstance().resources.getString(R.string.msg_download_only_using)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEqualizer: String? = MyApp.getInstance().resources.getString(R.string.lbl_equalizer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVideoQuality: String? = MyApp.getInstance().resources.getString(R.string.lbl_video_quality)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWiFiStreaming1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_wi_fi_streaming)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHigh1: String? = MyApp.getInstance().resources.getString(R.string.lbl_high)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDataCellularStreaming1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_data_cellular_streaming)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMedium: String? = MyApp.getInstance().resources.getString(R.string.lbl_medium)

)
