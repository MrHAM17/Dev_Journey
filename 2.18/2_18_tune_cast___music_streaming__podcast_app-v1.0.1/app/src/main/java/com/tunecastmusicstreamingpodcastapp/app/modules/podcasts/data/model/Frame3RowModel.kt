package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame3RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBillSullivan: String? =
      MyApp.getInstance().resources.getString(R.string.msg_610_bill_sullivan)

)
