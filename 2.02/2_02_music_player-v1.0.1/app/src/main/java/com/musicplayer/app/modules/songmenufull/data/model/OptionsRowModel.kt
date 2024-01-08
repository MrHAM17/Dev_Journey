package com.musicplayer.app.modules.songmenufull.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class OptionsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddToPlaylist: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_add_to_playlist)

)
