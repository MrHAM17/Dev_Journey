package com.musicplayer.app.modules.albumdetails.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class AlbumDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_wunder_king)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWunderKing: String? = MyApp.getInstance().resources.getString(R.string.lbl_wunder_king)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2018)

)
