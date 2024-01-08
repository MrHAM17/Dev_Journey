package com.musicplayer.app.modules.list.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class ListRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSongNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
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
