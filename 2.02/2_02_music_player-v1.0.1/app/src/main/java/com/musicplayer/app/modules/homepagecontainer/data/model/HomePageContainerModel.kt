package com.musicplayer.app.modules.homepagecontainer.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class HomePageContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTop: String? = MyApp.getInstance().resources.getString(R.string.lbl_top)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFavorites: String? = MyApp.getInstance().resources.getString(R.string.lbl_favorites)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_search)

)
