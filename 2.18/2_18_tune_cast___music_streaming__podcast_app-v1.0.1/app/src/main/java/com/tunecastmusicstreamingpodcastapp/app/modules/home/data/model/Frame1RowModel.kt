package com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistsName: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)

)
