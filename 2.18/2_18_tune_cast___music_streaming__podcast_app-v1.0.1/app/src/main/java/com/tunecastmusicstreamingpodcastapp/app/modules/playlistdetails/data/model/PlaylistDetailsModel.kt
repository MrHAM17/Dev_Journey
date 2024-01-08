package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PlaylistDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsum: String? =
      MyApp.getInstance().resources.getString(R.string.msg_my_favorite_pop2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_playlist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSongsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_345_songs)

)
