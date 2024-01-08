package com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PlaybackRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAutomix: String? = MyApp.getInstance().resources.getString(R.string.lbl_automix)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAllowsSeamless: String? =
      MyApp.getInstance().resources.getString(R.string.msg_allows_seamless)

)
