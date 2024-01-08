package com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class NewPlaylistModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPlaylist: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_playlist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etLabelValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDateValue: String? = null
)
