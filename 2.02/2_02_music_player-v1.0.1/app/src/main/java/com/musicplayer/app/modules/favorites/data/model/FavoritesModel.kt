package com.musicplayer.app.modules.favorites.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class FavoritesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_favourites)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRenaissance: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_did_you_like_it)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTracksCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_843_tracks)

)
