package com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame2RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBillSullivan: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_jordan_harb)

)
