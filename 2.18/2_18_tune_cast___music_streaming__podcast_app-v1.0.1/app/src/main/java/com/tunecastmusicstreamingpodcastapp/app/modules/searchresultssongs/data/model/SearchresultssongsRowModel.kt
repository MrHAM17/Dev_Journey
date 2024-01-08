package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchresultssongsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSongTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_starboy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.msg_the_weeknd_daft)

)
