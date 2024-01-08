package com.musicplayer.app.modules.artist.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class ArtistModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_renaissance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRenaissance: String? = MyApp.getInstance().resources.getString(R.string.lbl_renaissance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTracksCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_843_tracks)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlbumsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_23_albums)

)
