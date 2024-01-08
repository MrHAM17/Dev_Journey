package com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ArtistsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSortBy: String? = MyApp.getInstance().resources.getString(R.string.lbl_sort_by)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentlyDownloaded: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recently_downloaded)

)
