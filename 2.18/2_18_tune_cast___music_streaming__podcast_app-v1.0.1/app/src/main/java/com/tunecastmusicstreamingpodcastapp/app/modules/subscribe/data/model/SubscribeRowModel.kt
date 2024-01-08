package com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SubscribeRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListeningWithBetter: String? =
      MyApp.getInstance().resources.getString(R.string.msg_listening_with_better)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListeningWithout: String? =
      MyApp.getInstance().resources.getString(R.string.msg_listening_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShufflePlayDownload: String? =
      MyApp.getInstance().resources.getString(R.string.msg_shuffle_play_download)

)
