package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfiledetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions: String? = MyApp.getInstance().resources.getString(R.string.msg_ariana_grande)

)
