package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfiledetailsoneRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions: String? = MyApp.getInstance().resources.getString(R.string.msg_ariana_grande)

)
