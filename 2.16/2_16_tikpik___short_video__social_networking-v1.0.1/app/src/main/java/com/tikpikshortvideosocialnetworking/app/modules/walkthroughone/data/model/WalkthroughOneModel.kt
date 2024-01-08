package com.tikpikshortvideosocialnetworking.app.modules.walkthroughone.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class WalkthroughOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateShortVideos: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_short_videos)

)
