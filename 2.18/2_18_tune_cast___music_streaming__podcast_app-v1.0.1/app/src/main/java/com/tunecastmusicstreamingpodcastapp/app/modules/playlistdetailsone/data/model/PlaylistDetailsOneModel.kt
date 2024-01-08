package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PlaylistDetailsOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSweetener: String? = MyApp.getInstance().resources.getString(R.string.lbl_sweetener)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPlaylist: String? = MyApp.getInstance().resources.getString(R.string.lbl_playlist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSongs: String? = MyApp.getInstance().resources.getString(R.string.lbl_songs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
