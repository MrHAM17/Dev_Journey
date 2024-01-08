package com.moviestreaming.app.modules.dashboardcontainer.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class DashboardContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome1: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome2: String? = MyApp.getInstance().resources.getString(R.string.lbl_channels)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome3: String? = MyApp.getInstance().resources.getString(R.string.lbl_user)

)
