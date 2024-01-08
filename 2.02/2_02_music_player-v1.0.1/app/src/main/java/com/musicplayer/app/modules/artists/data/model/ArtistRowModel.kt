package com.musicplayer.app.modules.artists.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class ArtistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRenaissance: String? = MyApp.getInstance().resources.getString(R.string.lbl_lorn)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPodvalCaplella: String? =
      MyApp.getInstance().resources.getString(R.string.msg_843_tracks_23)

)
