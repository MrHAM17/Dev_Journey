package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PlaylistdetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSongTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_starboy_speed_up)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_just_lowkey)

)
