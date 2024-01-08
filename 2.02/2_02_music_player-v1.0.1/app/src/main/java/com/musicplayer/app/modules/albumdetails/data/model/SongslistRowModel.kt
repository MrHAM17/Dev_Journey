package com.musicplayer.app.modules.albumdetails.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class SongslistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCount: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBurning: String? = MyApp.getInstance().resources.getString(R.string.lbl_burning)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPodvalCaplella: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_podval_caplella)

)
