package com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SongPlayOverScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSongPodcastTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_starboy_the_weeknd)

)
