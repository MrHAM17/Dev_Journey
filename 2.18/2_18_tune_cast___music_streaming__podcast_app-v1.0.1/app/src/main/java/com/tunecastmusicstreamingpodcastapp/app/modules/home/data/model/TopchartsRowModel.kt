package com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class TopchartsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_100)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice4: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_100)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.msg_top_100_global)

)
