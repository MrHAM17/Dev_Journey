package com.tunecastmusicstreamingpodcastapp.app.modules.lyrics.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class LyricsModel(
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_let_a_nigga_brag)

)
