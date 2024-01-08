package com.ecommerce.app.modules.dashboardcontainer.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
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
  var txtExplore: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCart: String? = MyApp.getInstance().resources.getString(R.string.lbl_cart)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.lbl_offer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAccount: String? = MyApp.getInstance().resources.getString(R.string.lbl_account)

)
