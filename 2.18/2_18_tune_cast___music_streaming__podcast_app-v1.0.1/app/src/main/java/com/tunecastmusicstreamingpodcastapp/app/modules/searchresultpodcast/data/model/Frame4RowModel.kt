package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame4RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBillSullivan: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_jordan_harb)

)
