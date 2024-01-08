package com.housitbuyrentsellproperty.app.modules.home.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFeaturedEstates: String? =
      MyApp.getInstance().resources.getString(R.string.msg_featured_estates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViewall: String? = MyApp.getInstance().resources.getString(R.string.lbl_view_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTopLocations: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_locations)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExplore: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTopEstateAgent: String? =
      MyApp.getInstance().resources.getString(R.string.msg_top_estate_agent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExplore1: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExploreEstates: String? =
      MyApp.getInstance().resources.getString(R.string.msg_explore_nearby_estates)

)
