package com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PodcastersRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistName: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_jordan_harbinger2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEpisodesCounter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_692_episodes)

)
