package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class FiftynineRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPodcastTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_837_tristan_harris)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAuthor: String? = MyApp.getInstance().resources.getString(R.string.lbl_apple_talk)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_48_26_mins)

)
