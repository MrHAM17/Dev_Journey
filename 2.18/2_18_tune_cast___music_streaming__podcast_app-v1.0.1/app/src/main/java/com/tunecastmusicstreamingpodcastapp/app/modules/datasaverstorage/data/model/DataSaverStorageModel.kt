package com.tunecastmusicstreamingpodcastapp.app.modules.datasaverstorage.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class DataSaverStorageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.msg_data_saver_storage)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDataSaver: String? = MyApp.getInstance().resources.getString(R.string.lbl_data_saver)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAudioQuality: String? = MyApp.getInstance().resources.getString(R.string.lbl_audio_quality)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSetsYourAudio: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sets_your_audio)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPodcasts: String? = MyApp.getInstance().resources.getString(R.string.lbl_podcasts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloadAudioOnly: String? =
      MyApp.getInstance().resources.getString(R.string.msg_download_audio_only)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSaveVideoPodcasts: String? =
      MyApp.getInstance().resources.getString(R.string.msg_save_video_podcasts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStreamAudioOnly: String? =
      MyApp.getInstance().resources.getString(R.string.msg_stream_audio_only)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPlayVideoPodcasts: String? =
      MyApp.getInstance().resources.getString(R.string.msg_play_video_podcasts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStorage: String? = MyApp.getInstance().resources.getString(R.string.lbl_storage)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOtherApps: String? = MyApp.getInstance().resources.getString(R.string.lbl_other_apps)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFilesize: String? = MyApp.getInstance().resources.getString(R.string.lbl_75_4_gb)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCache: String? = MyApp.getInstance().resources.getString(R.string.lbl_cache)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFilesize1: String? = MyApp.getInstance().resources.getString(R.string.lbl_120_6_mb)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFreeSpace: String? = MyApp.getInstance().resources.getString(R.string.lbl_free_space)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFilesize2: String? = MyApp.getInstance().resources.getString(R.string.lbl_50_5_gb)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRemoveAllDownloads: String? =
      MyApp.getInstance().resources.getString(R.string.msg_remove_all_downloads)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRemoveAllOfThe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_remove_all_of_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClearCache: String? = MyApp.getInstance().resources.getString(R.string.lbl_clear_cache)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFreeUpStorage: String? =
      MyApp.getInstance().resources.getString(R.string.msg_free_up_storage)

)
