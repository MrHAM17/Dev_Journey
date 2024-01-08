package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ArtistsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistsName: String? = MyApp.getInstance().resources.getString(R.string.lbl_dr_death)

)
