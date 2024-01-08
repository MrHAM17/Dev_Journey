package com.tunecastmusicstreamingpodcastapp.app.modules.artiststabcontainer.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ArtistsTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_artists)

)
