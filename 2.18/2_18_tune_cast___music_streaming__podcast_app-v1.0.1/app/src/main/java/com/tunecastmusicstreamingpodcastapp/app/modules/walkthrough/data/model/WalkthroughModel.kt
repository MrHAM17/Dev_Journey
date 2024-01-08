package com.tunecastmusicstreamingpodcastapp.app.modules.walkthrough.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class WalkthroughModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtListenToTheBest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_listen_to_the_best)

)
