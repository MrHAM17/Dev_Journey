package com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeRecentlyWatchedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLastWatched: String? = MyApp.getInstance().resources.getString(R.string.lbl_last_watched)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCatagories: String? = MyApp.getInstance().resources.getString(R.string.lbl_catagories)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTabs: String? = MyApp.getInstance().resources.getString(R.string.lbl_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTabs1: String? = MyApp.getInstance().resources.getString(R.string.lbl_action)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTabs2: String? = MyApp.getInstance().resources.getString(R.string.lbl_comedy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTabs3: String? = MyApp.getInstance().resources.getString(R.string.lbl_romance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTabs4: String? = MyApp.getInstance().resources.getString(R.string.lbl_horor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMostPopular: String? = MyApp.getInstance().resources.getString(R.string.lbl_most_popular)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
