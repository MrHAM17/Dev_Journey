package com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class FollowartistsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistName: String? = MyApp.getInstance().resources.getString(R.string.lbl_the_weeknd)

)
