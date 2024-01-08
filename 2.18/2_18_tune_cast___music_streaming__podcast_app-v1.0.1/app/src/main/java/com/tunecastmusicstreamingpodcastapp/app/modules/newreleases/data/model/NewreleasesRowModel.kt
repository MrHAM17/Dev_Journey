package com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class NewreleasesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions: String? = MyApp.getInstance().resources.getString(R.string.lbl_positions)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)

)
