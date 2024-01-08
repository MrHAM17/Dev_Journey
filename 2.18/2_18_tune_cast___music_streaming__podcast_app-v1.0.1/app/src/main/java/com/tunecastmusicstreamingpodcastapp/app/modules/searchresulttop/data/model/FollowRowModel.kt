package com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class FollowRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSongTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_handsome)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_warren_hue)

)
