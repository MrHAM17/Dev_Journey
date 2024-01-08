package com.tunecastmusicstreamingpodcastapp.app.modules.songplay.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SongPlayModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleHere: String? = MyApp.getInstance().resources.getString(R.string.lbl_starboy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAuthorName: String? = MyApp.getInstance().resources.getString(R.string.msg_the_weeknd_daft)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_03_35)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_03_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLyrics: String? = MyApp.getInstance().resources.getString(R.string.lbl_lyrics)

)
