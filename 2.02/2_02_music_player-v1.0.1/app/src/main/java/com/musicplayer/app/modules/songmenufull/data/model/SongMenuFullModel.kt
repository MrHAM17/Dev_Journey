package com.musicplayer.app.modules.songmenufull.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class SongMenuFullModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRenaissance: String? = MyApp.getInstance().resources.getString(R.string.lbl_renaissance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPodvalCaplella: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_podval_caplella)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_43)

)
