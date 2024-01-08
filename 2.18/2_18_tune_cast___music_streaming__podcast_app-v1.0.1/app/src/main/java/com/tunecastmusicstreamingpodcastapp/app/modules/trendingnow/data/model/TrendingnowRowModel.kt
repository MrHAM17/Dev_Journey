package com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class TrendingnowRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_shades_of_love)

)
