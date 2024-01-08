package com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PopularartistsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistsName: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)

)
