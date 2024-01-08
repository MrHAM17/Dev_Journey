package com.musicplayer.app.modules.playlist.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class PlaylistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRenaissance: String? = MyApp.getInstance().resources.getString(R.string.lbl_flashbacks)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPodvalCaplella: String? = MyApp.getInstance().resources.getString(R.string.lbl_emika)

)
