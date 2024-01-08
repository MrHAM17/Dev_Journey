package com.vertexrealestateapp.app.modules.profile.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCameronWilliamson: String? =
      MyApp.getInstance().resources.getString(R.string.msg_cameron_williamson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_hello_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHomeSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_home_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentlyViewed: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recently_viewed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyFavorites: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_favorites)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPastTour: String? = MyApp.getInstance().resources.getString(R.string.lbl_past_tour)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGeneral: String? = MyApp.getInstance().resources.getString(R.string.lbl_general)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSellMyHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_sell_my_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyListings: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_listings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)

)
