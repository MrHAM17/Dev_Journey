package com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SongsnotificationsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtToday: String? = MyApp.getInstance().resources.getString(R.string.lbl_today)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_04_36_mins)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBREAKMYSOUL: String? = MyApp.getInstance().resources.getString(R.string.lbl_break_my_soul)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBeyonce: String? = MyApp.getInstance().resources.getString(R.string.lbl_beyonce)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlbum: String? = MyApp.getInstance().resources.getString(R.string.lbl_album)

)
