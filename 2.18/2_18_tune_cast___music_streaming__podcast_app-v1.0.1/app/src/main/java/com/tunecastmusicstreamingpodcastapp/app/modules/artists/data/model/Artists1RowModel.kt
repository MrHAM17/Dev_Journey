package com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class Artists1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistName: String? = MyApp.getInstance().resources.getString(R.string.lbl_the_weeknd)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSongsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_20_songs)

)
